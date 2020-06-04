import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:ft_project/common/global.dart';
export 'package:dio/src/response.dart';

class HttpError{
  int code;
  String message;
  HttpError({this.code, this.message});
}

class Http {
  static Dio dio = Dio(BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));
  static init() {
    // if (!Global.isRelease) {
    //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //       (client) {
    //     client.findProxy = (uri) {
    //       return "PROXY https://www.baidu.com";
    //     };
    //     //代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
    //     client.badCertificateCallback =
    //         (X509Certificate cert, String host, int port) => true;
    //   };
    // }
    dio.interceptors.addAll([
      InterceptorsWrapper(onRequest: (RequestOptions options) {
        return options;
      }, onResponse: (Response response) {
        if (response.statusCode == HttpStatus.ok) {
          var result = jsonDecode(response.data);
          return result;
        }
        return response;
      }, onError: (DioError err) {
        return err;
      }),
      // 开启请求日志
      // LogInterceptor(responseBody: true)
    ]);
  }

  static HttpError createErrorEntity(DioError error) {
    switch (error.type) {
      case DioErrorType.CANCEL:
        {
          return HttpError(code: -1, message: "请求取消");
        }
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        {
          return HttpError(code: -1, message: "连接超时");
        }
        break;
      case DioErrorType.SEND_TIMEOUT:
        {
          return HttpError(code: -1, message: "请求超时");
        }
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        {
          return HttpError(code: -1, message: "响应超时");
        }
        break;
      case DioErrorType.RESPONSE:
        {
          try {
            int errCode = error.response.statusCode;
            String errMsg = error.response.statusMessage;
            return HttpError(code: errCode, message: errMsg);
          } on Exception catch (_) {
            return HttpError(code: -1, message: "未知错误");
          }
        }
        break;
      default:
        {
          return HttpError(code: -1, message: '请求错误');
        }
    }
  }
  /// 封装通用请求
  static Future<Response<T>> request<T>(String method, String path,
      {dynamic data,
      Map<String, dynamic> queryParameters,
      CancelToken cancelToken,
      Options options,
      void Function(int, int) onSendProgress,
      void Function(int, int) onReceiveProgress}) async {
    options = (options ?? Options()).merge(method: method);
    path = Global.apiBaseURL + path;
    try {
      return await dio.request(path,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          options: options,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
    } on DioError catch (error) {
      return dio.reject(createErrorEntity(error));
    }
  }
}

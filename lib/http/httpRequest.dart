import 'package:dio/dio.dart';

class Http{
  static Dio dio = Dio(BaseOptions(
    baseUrl: '',
    connectTimeout: 5000,
    receiveTimeout: 3000
  ));
  static init() {
    // 设置请求代理
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
    //   client.findProxy = (uri) {
    //       return "PROXY localhost:8888";
    //   };
    // };
    dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (RequestOptions options) {
          return options;
        },
        onResponse: (Response response) {
          return response;
        },
        onError: (DioError err) {
          return err;
        }
      ),
      // 开启请求日志
      LogInterceptor(responseBody: true)
    ]);
  }
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocaleModel _$LocaleModelFromJson(Map<String, dynamic> json) {
  return LocaleModel()
    ..name = json['name'] as String
    ..languageCode = json['languageCode'] as String
    ..countryCode = json['countryCode'] as String
    ..localeString = json['localeString'] as String;
}

Map<String, dynamic> _$LocaleModelToJson(LocaleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'languageCode': instance.languageCode,
      'countryCode': instance.countryCode,
      'localeString': instance.localeString
    };

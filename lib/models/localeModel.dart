import 'package:json_annotation/json_annotation.dart';

part 'localeModel.g.dart';

@JsonSerializable()
class LocaleModel {
    LocaleModel();

    String name;
    String languageCode;
    String countryCode;
    String localeString;
    
    factory LocaleModel.fromJson(Map<String,dynamic> json) => _$LocaleModelFromJson(json);
    Map<String, dynamic> toJson() => _$LocaleModelToJson(this);
}

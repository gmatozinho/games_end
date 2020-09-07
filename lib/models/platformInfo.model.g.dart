// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platformInfo.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformInfo _$PlatformInfoFromJson(Map<String, dynamic> json) {
  return PlatformInfo(
    json['platform'] == null
        ? null
        : Platform.fromJson(json['platform'] as Map<String, dynamic>),
    json['released_at'] as String,
    json['requirements_en'] == null
        ? null
        : Requirements.fromJson(
            json['requirements_en'] as Map<String, dynamic>),
    json['requirements_ru'] == null
        ? null
        : Requirements.fromJson(
            json['requirements_ru'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlatformInfoToJson(PlatformInfo instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'released_at': instance.released_at,
      'requirements_en': instance.requirements_en,
      'requirements_ru': instance.requirements_ru,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storeInfo.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreInfo _$StoreInfoFromJson(Map<String, dynamic> json) {
  return StoreInfo(
    json['id'] as int,
    json['url_en'] as String,
    json['url_ru'] as String,
    json['store'] == null
        ? null
        : Store.fromJson(json['store'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StoreInfoToJson(StoreInfo instance) => <String, dynamic>{
      'id': instance.id,
      'url_en': instance.url_en,
      'url_ru': instance.url_ru,
      'store': instance.store,
    };

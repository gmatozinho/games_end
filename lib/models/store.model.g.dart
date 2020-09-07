// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) {
  return Store(
    json['id'] as int,
    json['games_count'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['domain'] as String,
    json['image_background'] as String,
  );
}

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'games_count': instance.games_count,
      'name': instance.name,
      'slug': instance.slug,
      'domain': instance.domain,
      'image_background': instance.image_background,
    };

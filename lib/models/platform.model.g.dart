// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Platform _$PlatformFromJson(Map<String, dynamic> json) {
  return Platform(
    json['name'] as String,
    json['slug'] as String,
    json['image'] as String,
    json['year_end'] as int,
    json['year_start'] as int,
    json['image_background'] as String,
    json['id'] as int,
    json['games_count'] as int,
  );
}

Map<String, dynamic> _$PlatformToJson(Platform instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'image_background': instance.image_background,
      'id': instance.id,
      'games_count': instance.games_count,
      'year_end': instance.year_end,
      'year_start': instance.year_start,
    };

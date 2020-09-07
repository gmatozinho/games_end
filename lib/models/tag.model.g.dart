// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    json['id'] as int,
    json['games_count'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['language'] as String,
    json['image_background'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'games_count': instance.games_count,
      'name': instance.name,
      'slug': instance.slug,
      'language': instance.language,
      'image_background': instance.image_background,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return Genre(
    json['id'] as int,
    json['games_count'] as int,
    json['name'] as String,
    json['slug'] as String,
    json['image_background'] as String,
  );
}

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'id': instance.id,
      'games_count': instance.games_count,
      'name': instance.name,
      'slug': instance.slug,
      'image_background': instance.image_background,
    };

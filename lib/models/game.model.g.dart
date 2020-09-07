// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game(
    rating: (json['rating'] as num)?.toDouble(),
    rating_top: json['rating_top'] as int,
    ratings_count: json['ratings_count'] as int,
    reviews_text_count: json['reviews_text_count'] as int,
    added: json['added'] as int,
    playtime: json['playtime'] as int,
    suggestions_count: json['suggestions_count'] as int,
    reviews_count: json['reviews_count'] as int,
    slug: json['slug'] as String,
    name: json['name'] as String,
    released: json['released'] as String,
    tba: json['tba'] as bool,
    background_image: json['background_image'] as String,
    metacritic: json['metacritic'] as int,
    user_game: json['user_game'] as String,
    saturated_color: json['saturated_color'] as String,
    dominant_color: json['dominant_color'] as String,
    ratings: (json['ratings'] as List)
        ?.map((e) =>
            e == null ? null : Rating.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    platforms: (json['platforms'] as List)
        ?.map((e) =>
            e == null ? null : PlatformInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parent_platforms: (json['parent_platforms'] as List)
        ?.map((e) => e == null
            ? null
            : ParentPlatform.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    genres: (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stores: (json['stores'] as List)
        ?.map((e) =>
            e == null ? null : StoreInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    short_screenshots: (json['short_screenshots'] as List)
        ?.map((e) => e == null
            ? null
            : ShortScrenshoot.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    added_by_status: json['added_by_status'] == null
        ? null
        : AddedByStatus.fromJson(
            json['added_by_status'] as Map<String, dynamic>),
    clip: json['clip'],
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'rating': instance.rating,
      'id': instance.id,
      'rating_top': instance.rating_top,
      'ratings_count': instance.ratings_count,
      'reviews_text_count': instance.reviews_text_count,
      'added': instance.added,
      'playtime': instance.playtime,
      'suggestions_count': instance.suggestions_count,
      'reviews_count': instance.reviews_count,
      'metacritic': instance.metacritic,
      'tba': instance.tba,
      'slug': instance.slug,
      'name': instance.name,
      'released': instance.released,
      'background_image': instance.background_image,
      'user_game': instance.user_game,
      'saturated_color': instance.saturated_color,
      'dominant_color': instance.dominant_color,
      'ratings': instance.ratings,
      'platforms': instance.platforms,
      'parent_platforms': instance.parent_platforms,
      'genres': instance.genres,
      'stores': instance.stores,
      'tags': instance.tags,
      'short_screenshots': instance.short_screenshots,
      'clip': instance.clip,
      'added_by_status': instance.added_by_status,
    };

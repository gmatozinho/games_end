import 'package:json_annotation/json_annotation.dart';

part 'game.model.g.dart';

@JsonSerializable()
class Game {
  final double rating;
  final int id,
      rating_top,
      ratings_count,
      reviews_text_count,
      added,
      playtime,
      suggestions_count,
      reviews_count,
      metacritic;

  final bool tba;
  final String slug,
      name,
      released,
      background_image,
      user_game,
      saturated_color,
      dominant_color;
  final List<dynamic> ratings,
      platforms,
      parent_platforms,
      genres,
      stores,
      tags,
      short_screenshots;
  final dynamic added_by_status, clip;

  Game(
      {this.rating,
      this.rating_top,
      this.ratings_count,
      this.reviews_text_count,
      this.added,
      this.playtime,
      this.suggestions_count,
      this.reviews_count,
      this.slug,
      this.name,
      this.released,
      this.tba,
      this.background_image,
      this.metacritic,
      this.user_game,
      this.saturated_color,
      this.dominant_color,
      this.ratings,
      this.platforms,
      this.parent_platforms,
      this.genres,
      this.stores,
      this.tags,
      this.short_screenshots,
      this.added_by_status,
      this.clip,
      this.id});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

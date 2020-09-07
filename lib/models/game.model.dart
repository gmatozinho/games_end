import 'package:games_end/models/addedByStatus.model.dart';
import 'package:games_end/models/genre.model.dart';
import 'package:games_end/models/parentPlatform.model.dart';
import 'package:games_end/models/platformInfo.model.dart';
import 'package:games_end/models/rating.model.dart';
import 'package:games_end/models/shortScreenshoot.model.dart';
import 'package:games_end/models/storeInfo.model.dart';
import 'package:games_end/models/tag.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game.model.g.dart';

@JsonSerializable()
class Game {
  final double rating;

  final int id,
      // ignore: non_constant_identifier_names
      rating_top,
      // ignore: non_constant_identifier_names
      ratings_count,
      // ignore: non_constant_identifier_names
      reviews_text_count,
      added,
      playtime,
      // ignore: non_constant_identifier_names
      suggestions_count,
      // ignore: non_constant_identifier_names
      reviews_count,
      metacritic;

  final bool tba;

  // ignore: non_constant_identifier_names
  final String slug,
      name,
      released,
      // ignore: non_constant_identifier_names
      background_image,
      // ignore: non_constant_identifier_names
      user_game,
      // ignore: non_constant_identifier_names
      saturated_color,
      // ignore: non_constant_identifier_names
      dominant_color;

  final List<Rating> ratings;
  final List<PlatformInfo> platforms;
  // ignore: non_constant_identifier_names
  final List<ParentPlatform> parent_platforms;

  final List<Genre> genres;
  final List<StoreInfo> stores;
  final List<Tag> tags;

  // ignore: non_constant_identifier_names
  final List<ShortScrenshoot> short_screenshots;

  final dynamic clip;

  // ignore: non_constant_identifier_names
  final AddedByStatus added_by_status;

  Game(
      {this.rating,
      // ignore: non_constant_identifier_names
      this.rating_top,
      // ignore: non_constant_identifier_names
      this.ratings_count,
      // ignore: non_constant_identifier_names
      this.reviews_text_count,
      this.added,
      this.playtime,
      // ignore: non_constant_identifier_names
      this.suggestions_count,
      // ignore: non_constant_identifier_names
      this.reviews_count,
      this.slug,
      this.name,
      this.released,
      this.tba,
      // ignore: non_constant_identifier_names
      this.background_image,
      this.metacritic,
      // ignore: non_constant_identifier_names
      this.user_game,
      // ignore: non_constant_identifier_names
      this.saturated_color,
      // ignore: non_constant_identifier_names
      this.dominant_color,
      this.ratings,
      this.platforms,
      // ignore: non_constant_identifier_names
      this.parent_platforms,
      this.genres,
      this.stores,
      this.tags,
      // ignore: non_constant_identifier_names
      this.short_screenshots,
      // ignore: non_constant_identifier_names
      this.added_by_status,
      this.clip,
      this.id});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

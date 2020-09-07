import 'package:json_annotation/json_annotation.dart';

part 'genre.model.g.dart';

@JsonSerializable()
class Genre {
  final int id, games_count;
  final String name, slug, image_background;

  Genre(this.id, this.games_count, this.name, this.slug, this.image_background);

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

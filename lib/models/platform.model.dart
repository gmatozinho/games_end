import 'package:json_annotation/json_annotation.dart';

part 'platform.model.g.dart';

@JsonSerializable()
class Platform {
  final String name, slug, image, year_end, year_start, image_background;

  final int id, games_count;

  Platform(this.name, this.slug, this.image, this.year_end, this.year_start,
      this.image_background, this.id, this.games_count);

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);
  Map<String, dynamic> toJson() => _$PlatformToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'tag.model.g.dart';

@JsonSerializable()
class Tag {
  // ignore: non_constant_identifier_names
  final int id, games_count;
  // ignore: non_constant_identifier_names
  final String name, slug, language, image_background;

  Tag(this.id, this.games_count, this.name, this.slug, this.language,
      this.image_background);

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
  Map<String, dynamic> toJson() => _$TagToJson(this);
}

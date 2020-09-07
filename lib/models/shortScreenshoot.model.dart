import 'package:json_annotation/json_annotation.dart';

part 'shortScreenshoot.model.g.dart';

@JsonSerializable()
class ShortScrenshoot {
  final int id;
  final String image;

  ShortScrenshoot({this.id, this.image});

  factory ShortScrenshoot.fromJson(Map<String, dynamic> json) =>
      _$ShortScrenshootFromJson(json);
  Map<String, dynamic> toJson() => _$ShortScrenshootToJson(this);
}

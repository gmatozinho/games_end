import 'package:games_end/models/platform.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parentPlatform.model.g.dart';

@JsonSerializable()
class ParentPlatform {
  final Platform platform;

  ParentPlatform(this.platform);

  factory ParentPlatform.fromJson(Map<String, dynamic> json) =>
      _$ParentPlatformFromJson(json);
  Map<String, dynamic> toJson() => _$ParentPlatformToJson(this);
}

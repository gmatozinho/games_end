import 'package:games_end/models/platform.model.dart';
import 'package:games_end/models/requirements.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'platformInfo.model.g.dart';

@JsonSerializable()
class PlatformInfo {
  final Platform platform;

  final String released_at;

  final Requirements requirements_en, requirements_ru;

  PlatformInfo(this.platform, this.released_at, this.requirements_en,
      this.requirements_ru);

  factory PlatformInfo.fromJson(Map<String, dynamic> json) =>
      _$PlatformInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlatformInfoToJson(this);
}

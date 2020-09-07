import 'package:json_annotation/json_annotation.dart';

part 'requirements.model.g.dart';

@JsonSerializable()
class Requirements {
  final String minimum, recommended;
  Requirements(this.minimum, this.recommended);

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);
  Map<String, dynamic> toJson() => _$RequirementsToJson(this);
}

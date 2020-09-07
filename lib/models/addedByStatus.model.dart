import 'package:json_annotation/json_annotation.dart';

part 'addedByStatus.model.g.dart';

@JsonSerializable()
class AddedByStatus {
  final int owned, toplay, playing, yet, beaten, dropped;

  AddedByStatus(this.yet, this.beaten, this.dropped, this.owned, this.toplay,
      this.playing);

  factory AddedByStatus.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusFromJson(json);
  Map<String, dynamic> toJson() => _$AddedByStatusToJson(this);
}

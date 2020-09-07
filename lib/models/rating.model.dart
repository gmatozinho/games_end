import 'package:json_annotation/json_annotation.dart';

part 'rating.model.g.dart';

@JsonSerializable()
class Rating {
  final int id, count, percent;

  final String title;

  Rating(this.id, this.count, this.percent, this.title);

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}

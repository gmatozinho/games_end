import 'package:games_end/models/game.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gamesPagination.model.g.dart';

@JsonSerializable()
class GamesPagination {
  final int count;
  final String next;
  final String previous;
  final List<Game> results;

  GamesPagination({this.count, this.next, this.previous, this.results});
  factory GamesPagination.fromJson(Map<String, dynamic> json) =>
      _$GamesPaginationFromJson(json);
  Map<String, dynamic> toJson() => _$GamesPaginationToJson(this);
}

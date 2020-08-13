// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamesPagination.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamesPagination _$GamesPaginationFromJson(Map<String, dynamic> json) {
  return GamesPagination(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'] as String,
    results: (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Game.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GamesPaginationToJson(GamesPagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

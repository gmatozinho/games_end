// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating(
    json['id'] as int,
    json['count'] as int,
    (json['percent'] as num)?.toDouble(),
    json['title'] as String,
  );
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'percent': instance.percent,
      'title': instance.title,
    };

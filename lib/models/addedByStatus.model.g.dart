// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addedByStatus.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddedByStatus _$AddedByStatusFromJson(Map<String, dynamic> json) {
  return AddedByStatus(
    json['yet'] as int,
    json['beaten'] as int,
    json['dropped'] as int,
    json['owned'] as int,
    json['toplay'] as int,
    json['playing'] as int,
  );
}

Map<String, dynamic> _$AddedByStatusToJson(AddedByStatus instance) =>
    <String, dynamic>{
      'owned': instance.owned,
      'toplay': instance.toplay,
      'playing': instance.playing,
      'yet': instance.yet,
      'beaten': instance.beaten,
      'dropped': instance.dropped,
    };

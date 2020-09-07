// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirements.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Requirements _$RequirementsFromJson(Map<String, dynamic> json) {
  return Requirements(
    json['minimum'] as String,
    json['recommended'] as String,
  );
}

Map<String, dynamic> _$RequirementsToJson(Requirements instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'recommended': instance.recommended,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_indicator_field_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveIndicatorFieldRequestDto _$SaveIndicatorFieldRequestDtoFromJson(
  Map<String, dynamic> json,
) => _SaveIndicatorFieldRequestDto(
  periodStart: json['period_start'] as String,
  periodEnd: json['period_end'] as String,
  periodKey: json['period_key'] as String,
  indicatorToMoId: (json['indicator_to_mo_id'] as num).toInt(),
  fieldName: json['field_name'] as String,
  fieldValue: json['field_value'] as String,
  authUserId: (json['auth_user_id'] as num).toInt(),
);

Map<String, dynamic> _$SaveIndicatorFieldRequestDtoToJson(
  _SaveIndicatorFieldRequestDto instance,
) => <String, dynamic>{
  'period_start': instance.periodStart,
  'period_end': instance.periodEnd,
  'period_key': instance.periodKey,
  'indicator_to_mo_id': instance.indicatorToMoId,
  'field_name': instance.fieldName,
  'field_value': instance.fieldValue,
  'auth_user_id': instance.authUserId,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_indicator_field_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveIndicatorFieldResponseDto _$SaveIndicatorFieldResponseDtoFromJson(
  Map<String, dynamic> json,
) => _SaveIndicatorFieldResponseDto(
  messages: json['MESSAGES'] == null
      ? null
      : ApiMessagesDto.fromJson(json['MESSAGES'] as Map<String, dynamic>),
  status: json['STATUS'] as String?,
);

Map<String, dynamic> _$SaveIndicatorFieldResponseDtoToJson(
  _SaveIndicatorFieldResponseDto instance,
) => <String, dynamic>{
  'MESSAGES': instance.messages,
  'STATUS': instance.status,
};

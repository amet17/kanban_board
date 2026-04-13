// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_messages_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiMessagesDto _$ApiMessagesDtoFromJson(Map<String, dynamic> json) =>
    _ApiMessagesDto(
      error: (json['error'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      warning: (json['warning'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      info: (json['info'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiMessagesDtoToJson(_ApiMessagesDto instance) =>
    <String, dynamic>{
      'error': instance.error,
      'warning': instance.warning,
      'info': instance.info,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_indicators_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetIndicatorsResponseDto _$GetIndicatorsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetIndicatorsResponseDto(
  messages: json['MESSAGES'] == null
      ? null
      : ApiMessagesDto.fromJson(json['MESSAGES'] as Map<String, dynamic>),
  data: json['DATA'] == null
      ? null
      : GetIndicatorsDataDto.fromJson(json['DATA'] as Map<String, dynamic>),
  status: json['STATUS'] as String?,
);

Map<String, dynamic> _$GetIndicatorsResponseDtoToJson(
  _GetIndicatorsResponseDto instance,
) => <String, dynamic>{
  'MESSAGES': instance.messages,
  'DATA': instance.data,
  'STATUS': instance.status,
};

_GetIndicatorsDataDto _$GetIndicatorsDataDtoFromJson(
  Map<String, dynamic> json,
) => _GetIndicatorsDataDto(
  page: _intFromJson(json['page']),
  pagesCount: _intFromJson(json['pages_count']),
  rowsCount: _intFromJson(json['rows_count']),
  rowsTotalCount: _intFromJson(json['rows_total_count']),
  rows:
      (json['rows'] as List<dynamic>?)
          ?.map((e) => IndicatorTaskDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IndicatorTaskDto>[],
);

Map<String, dynamic> _$GetIndicatorsDataDtoToJson(
  _GetIndicatorsDataDto instance,
) => <String, dynamic>{
  'page': instance.page,
  'pages_count': instance.pagesCount,
  'rows_count': instance.rowsCount,
  'rows_total_count': instance.rowsTotalCount,
  'rows': instance.rows,
};

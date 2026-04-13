import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_messages_dto.dart';
import 'indicator_task_dto.dart';

part 'get_indicators_response_dto.freezed.dart';
part 'get_indicators_response_dto.g.dart';

@freezed
abstract class GetIndicatorsResponseDto with _$GetIndicatorsResponseDto {
  const factory GetIndicatorsResponseDto({
    @JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,
    @JsonKey(name: 'DATA') GetIndicatorsDataDto? data,
    @JsonKey(name: 'STATUS') String? status,
  }) = _GetIndicatorsResponseDto;

  factory GetIndicatorsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetIndicatorsResponseDtoFromJson(json);
}

@freezed
abstract class GetIndicatorsDataDto with _$GetIndicatorsDataDto {
  const factory GetIndicatorsDataDto({
    @JsonKey(fromJson: _intFromJson) int? page,
    @JsonKey(name: 'pages_count', fromJson: _intFromJson) int? pagesCount,
    @JsonKey(name: 'rows_count', fromJson: _intFromJson) int? rowsCount,
    @JsonKey(name: 'rows_total_count', fromJson: _intFromJson)
    int? rowsTotalCount,
    @Default(<IndicatorTaskDto>[])
    @JsonKey(name: 'rows')
    List<IndicatorTaskDto> rows,
  }) = _GetIndicatorsDataDto;

  factory GetIndicatorsDataDto.fromJson(Map<String, dynamic> json) =>
      _$GetIndicatorsDataDtoFromJson(json);
}

int? _intFromJson(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString());
}

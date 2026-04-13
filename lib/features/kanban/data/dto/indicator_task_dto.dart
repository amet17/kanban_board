import 'package:freezed_annotation/freezed_annotation.dart';

part 'indicator_task_dto.freezed.dart';
part 'indicator_task_dto.g.dart';

@freezed
abstract class IndicatorTaskDto with _$IndicatorTaskDto {
  const factory IndicatorTaskDto({
    String? name,
    @JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson)
    int? indicatorToMoId,
    @JsonKey(name: 'parent_id', fromJson: _intFromJson) int? parentId,
    @JsonKey(fromJson: _intFromJson) int? order,
  }) = _IndicatorTaskDto;

  factory IndicatorTaskDto.fromJson(Map<String, dynamic> json) =>
      _$IndicatorTaskDtoFromJson(json);
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

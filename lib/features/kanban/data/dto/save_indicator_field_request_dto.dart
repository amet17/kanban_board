import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_indicator_field_request_dto.freezed.dart';
part 'save_indicator_field_request_dto.g.dart';

@freezed
abstract class SaveIndicatorFieldRequestDto
    with _$SaveIndicatorFieldRequestDto {
  const factory SaveIndicatorFieldRequestDto({
    @JsonKey(name: 'period_start') required String periodStart,
    @JsonKey(name: 'period_end') required String periodEnd,
    @JsonKey(name: 'period_key') required String periodKey,
    @JsonKey(name: 'indicator_to_mo_id') required int indicatorToMoId,
    @JsonKey(name: 'field_name') required String fieldName,
    @JsonKey(name: 'field_value') required String fieldValue,
    @JsonKey(name: 'auth_user_id') required int authUserId,
  }) = _SaveIndicatorFieldRequestDto;

  factory SaveIndicatorFieldRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SaveIndicatorFieldRequestDtoFromJson(json);
}

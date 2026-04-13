import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_messages_dto.dart';

part 'save_indicator_field_response_dto.freezed.dart';
part 'save_indicator_field_response_dto.g.dart';

@freezed
abstract class SaveIndicatorFieldResponseDto
    with _$SaveIndicatorFieldResponseDto {
  const factory SaveIndicatorFieldResponseDto({
    @JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,
    @JsonKey(name: 'STATUS') String? status,
  }) = _SaveIndicatorFieldResponseDto;

  factory SaveIndicatorFieldResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SaveIndicatorFieldResponseDtoFromJson(json);
}

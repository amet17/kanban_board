import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_messages_dto.freezed.dart';
part 'api_messages_dto.g.dart';

@freezed
abstract class ApiMessagesDto with _$ApiMessagesDto {
  const factory ApiMessagesDto({
    List<String>? error,
    List<String>? warning,
    List<String>? info,
  }) = _ApiMessagesDto;

  factory ApiMessagesDto.fromJson(Map<String, dynamic> json) =>
      _$ApiMessagesDtoFromJson(json);
}

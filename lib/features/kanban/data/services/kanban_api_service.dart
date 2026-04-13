import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../constants/kanban_request_defaults.dart';
import '../dto/get_indicators_response_dto.dart';
import '../dto/save_indicator_field_response_dto.dart';

part 'kanban_api_service.g.dart';

@RestApi(baseUrl: KanbanRequestDefaults.baseUrl)
abstract class KanbanApiService {
  factory KanbanApiService(Dio dio, {String? baseUrl}) = _KanbanApiService;

  @MultiPart()
  @POST('/_api/indicators/get_mo_indicators')
  Future<GetIndicatorsResponseDto> getMoIndicators({
    @Header('Authorization') required String authorization,
    @Part(name: 'period_start') required String periodStart,
    @Part(name: 'period_end') required String periodEnd,
    @Part(name: 'period_key') required String periodKey,
    @Part(name: 'requested_mo_id') required int requestedMoId,
    @Part(name: 'behaviour_key') required String behaviourKey,
    @Part(name: 'with_result') required String withResult,
    @Part(name: 'response_fields') required String responseFields,
    @Part(name: 'auth_user_id') required int authUserId,
  });

  @MultiPart()
  @POST('/_api/indicators/save_indicator_instance_field')
  Future<SaveIndicatorFieldResponseDto> saveIndicatorInstanceField({
    @Header('Authorization') required String authorization,
    @Part(name: 'period_start') required String periodStart,
    @Part(name: 'period_end') required String periodEnd,
    @Part(name: 'period_key') required String periodKey,
    @Part(name: 'indicator_to_mo_id') required int indicatorToMoId,
    @Part(name: 'field_name') required String fieldName,
    @Part(name: 'field_value') required String fieldValue,
    @Part(name: 'auth_user_id') required int authUserId,
  });
}

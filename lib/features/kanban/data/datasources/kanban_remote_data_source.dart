import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_exception.dart';
import '../constants/kanban_request_defaults.dart';
import '../dto/indicator_task_dto.dart';
import '../dto/save_indicator_field_request_dto.dart';
import '../services/kanban_api_service.dart';

abstract interface class KanbanRemoteDataSource {
  Future<List<IndicatorTaskDto>> loadTasks();

  Future<void> saveField(SaveIndicatorFieldRequestDto request);
}

@LazySingleton(as: KanbanRemoteDataSource)
class KanbanRemoteDataSourceImpl implements KanbanRemoteDataSource {
  const KanbanRemoteDataSourceImpl(this._apiService);

  final KanbanApiService _apiService;

  @override
  Future<List<IndicatorTaskDto>> loadTasks() async {
    try {
      final response = await _apiService.getMoIndicators(
        authorization: KanbanRequestDefaults.authHeader,
        periodStart: KanbanRequestDefaults.periodStart,
        periodEnd: KanbanRequestDefaults.periodEnd,
        periodKey: KanbanRequestDefaults.periodKey,
        requestedMoId: KanbanRequestDefaults.requestedMoId,
        behaviourKey: KanbanRequestDefaults.behaviourKey,
        withResult: KanbanRequestDefaults.withResult,
        responseFields: KanbanRequestDefaults.responseFields,
        authUserId: KanbanRequestDefaults.authUserId,
      );

      final errors = response.messages?.error ?? const <String>[];
      if (errors.isNotEmpty) {
        throw AppException(errors.join('\n'));
      }

      return response.data?.rows ?? const <IndicatorTaskDto>[];
    } on DioException catch (error) {
      throw AppException(
        _extractBackendMessage(error) ?? 'Failed to load board',
        statusCode: error.response?.statusCode,
        cause: error,
      );
    }
  }

  @override
  Future<void> saveField(SaveIndicatorFieldRequestDto request) async {
    try {
      final response = await _apiService.saveIndicatorInstanceField(
        authorization: KanbanRequestDefaults.authHeader,
        periodStart: request.periodStart,
        periodEnd: request.periodEnd,
        periodKey: request.periodKey,
        indicatorToMoId: request.indicatorToMoId,
        fieldName: request.fieldName,
        fieldValue: request.fieldValue,
        authUserId: request.authUserId,
      );

      final errors = response.messages?.error ?? const <String>[];
      final status = response.status?.toUpperCase();

      if (errors.isNotEmpty || status != 'OK') {
        throw AppException(
          errors.isNotEmpty ? errors.join('\n') : 'Failed to save task changes',
        );
      }
    } on DioException catch (error) {
      throw AppException(
        _extractBackendMessage(error) ?? 'Failed to save task changes',
        statusCode: error.response?.statusCode,
        cause: error,
      );
    }
  }

  String? _extractBackendMessage(DioException error) {
    final payload = error.response?.data;
    if (payload is! Map<String, dynamic>) {
      return null;
    }
    final messages = payload['MESSAGES'];
    if (messages is! Map<String, dynamic>) {
      return null;
    }
    final errors = messages['error'];
    if (errors is List && errors.isNotEmpty) {
      return errors.join('\n');
    }
    return null;
  }
}

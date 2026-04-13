// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_api_service.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _KanbanApiService implements KanbanApiService {
  _KanbanApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.dev.kpi-drive.ru';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GetIndicatorsResponseDto> getMoIndicators({
    required String authorization,
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required int requestedMoId,
    required String behaviourKey,
    required String withResult,
    required String responseFields,
    required int authUserId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('period_start', periodStart));
    _data.fields.add(MapEntry('period_end', periodEnd));
    _data.fields.add(MapEntry('period_key', periodKey));
    _data.fields.add(MapEntry('requested_mo_id', requestedMoId.toString()));
    _data.fields.add(MapEntry('behaviour_key', behaviourKey));
    _data.fields.add(MapEntry('with_result', withResult));
    _data.fields.add(MapEntry('response_fields', responseFields));
    _data.fields.add(MapEntry('auth_user_id', authUserId.toString()));
    final _options = _setStreamType<GetIndicatorsResponseDto>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/_api/indicators/get_mo_indicators',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetIndicatorsResponseDto _value;
    try {
      _value = GetIndicatorsResponseDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<SaveIndicatorFieldResponseDto> saveIndicatorInstanceField({
    required String authorization,
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required int indicatorToMoId,
    required String fieldName,
    required String fieldValue,
    required int authUserId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('period_start', periodStart));
    _data.fields.add(MapEntry('period_end', periodEnd));
    _data.fields.add(MapEntry('period_key', periodKey));
    _data.fields.add(
      MapEntry('indicator_to_mo_id', indicatorToMoId.toString()),
    );
    _data.fields.add(MapEntry('field_name', fieldName));
    _data.fields.add(MapEntry('field_value', fieldValue));
    _data.fields.add(MapEntry('auth_user_id', authUserId.toString()));
    final _options = _setStreamType<SaveIndicatorFieldResponseDto>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/_api/indicators/save_indicator_instance_field',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SaveIndicatorFieldResponseDto _value;
    try {
      _value = SaveIndicatorFieldResponseDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on

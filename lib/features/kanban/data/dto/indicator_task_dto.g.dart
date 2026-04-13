// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IndicatorTaskDto _$IndicatorTaskDtoFromJson(Map<String, dynamic> json) =>
    _IndicatorTaskDto(
      name: json['name'] as String?,
      indicatorToMoId: _intFromJson(json['indicator_to_mo_id']),
      parentId: _intFromJson(json['parent_id']),
      order: _intFromJson(json['order']),
    );

Map<String, dynamic> _$IndicatorTaskDtoToJson(_IndicatorTaskDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'indicator_to_mo_id': instance.indicatorToMoId,
      'parent_id': instance.parentId,
      'order': instance.order,
    };

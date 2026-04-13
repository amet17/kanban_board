// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicator_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndicatorTaskDto {

 String? get name;@JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson) int? get indicatorToMoId;@JsonKey(name: 'parent_id', fromJson: _intFromJson) int? get parentId;@JsonKey(fromJson: _intFromJson) int? get order;
/// Create a copy of IndicatorTaskDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorTaskDtoCopyWith<IndicatorTaskDto> get copyWith => _$IndicatorTaskDtoCopyWithImpl<IndicatorTaskDto>(this as IndicatorTaskDto, _$identity);

  /// Serializes this IndicatorTaskDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorTaskDto&&(identical(other.name, name) || other.name == name)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,indicatorToMoId,parentId,order);

@override
String toString() {
  return 'IndicatorTaskDto(name: $name, indicatorToMoId: $indicatorToMoId, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class $IndicatorTaskDtoCopyWith<$Res>  {
  factory $IndicatorTaskDtoCopyWith(IndicatorTaskDto value, $Res Function(IndicatorTaskDto) _then) = _$IndicatorTaskDtoCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson) int? indicatorToMoId,@JsonKey(name: 'parent_id', fromJson: _intFromJson) int? parentId,@JsonKey(fromJson: _intFromJson) int? order
});




}
/// @nodoc
class _$IndicatorTaskDtoCopyWithImpl<$Res>
    implements $IndicatorTaskDtoCopyWith<$Res> {
  _$IndicatorTaskDtoCopyWithImpl(this._self, this._then);

  final IndicatorTaskDto _self;
  final $Res Function(IndicatorTaskDto) _then;

/// Create a copy of IndicatorTaskDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? indicatorToMoId = freezed,Object? parentId = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,indicatorToMoId: freezed == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [IndicatorTaskDto].
extension IndicatorTaskDtoPatterns on IndicatorTaskDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndicatorTaskDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndicatorTaskDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndicatorTaskDto value)  $default,){
final _that = this;
switch (_that) {
case _IndicatorTaskDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndicatorTaskDto value)?  $default,){
final _that = this;
switch (_that) {
case _IndicatorTaskDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson)  int? indicatorToMoId, @JsonKey(name: 'parent_id', fromJson: _intFromJson)  int? parentId, @JsonKey(fromJson: _intFromJson)  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndicatorTaskDto() when $default != null:
return $default(_that.name,_that.indicatorToMoId,_that.parentId,_that.order);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson)  int? indicatorToMoId, @JsonKey(name: 'parent_id', fromJson: _intFromJson)  int? parentId, @JsonKey(fromJson: _intFromJson)  int? order)  $default,) {final _that = this;
switch (_that) {
case _IndicatorTaskDto():
return $default(_that.name,_that.indicatorToMoId,_that.parentId,_that.order);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson)  int? indicatorToMoId, @JsonKey(name: 'parent_id', fromJson: _intFromJson)  int? parentId, @JsonKey(fromJson: _intFromJson)  int? order)?  $default,) {final _that = this;
switch (_that) {
case _IndicatorTaskDto() when $default != null:
return $default(_that.name,_that.indicatorToMoId,_that.parentId,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndicatorTaskDto implements IndicatorTaskDto {
  const _IndicatorTaskDto({this.name, @JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson) this.indicatorToMoId, @JsonKey(name: 'parent_id', fromJson: _intFromJson) this.parentId, @JsonKey(fromJson: _intFromJson) this.order});
  factory _IndicatorTaskDto.fromJson(Map<String, dynamic> json) => _$IndicatorTaskDtoFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson) final  int? indicatorToMoId;
@override@JsonKey(name: 'parent_id', fromJson: _intFromJson) final  int? parentId;
@override@JsonKey(fromJson: _intFromJson) final  int? order;

/// Create a copy of IndicatorTaskDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndicatorTaskDtoCopyWith<_IndicatorTaskDto> get copyWith => __$IndicatorTaskDtoCopyWithImpl<_IndicatorTaskDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndicatorTaskDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndicatorTaskDto&&(identical(other.name, name) || other.name == name)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,indicatorToMoId,parentId,order);

@override
String toString() {
  return 'IndicatorTaskDto(name: $name, indicatorToMoId: $indicatorToMoId, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$IndicatorTaskDtoCopyWith<$Res> implements $IndicatorTaskDtoCopyWith<$Res> {
  factory _$IndicatorTaskDtoCopyWith(_IndicatorTaskDto value, $Res Function(_IndicatorTaskDto) _then) = __$IndicatorTaskDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'indicator_to_mo_id', fromJson: _intFromJson) int? indicatorToMoId,@JsonKey(name: 'parent_id', fromJson: _intFromJson) int? parentId,@JsonKey(fromJson: _intFromJson) int? order
});




}
/// @nodoc
class __$IndicatorTaskDtoCopyWithImpl<$Res>
    implements _$IndicatorTaskDtoCopyWith<$Res> {
  __$IndicatorTaskDtoCopyWithImpl(this._self, this._then);

  final _IndicatorTaskDto _self;
  final $Res Function(_IndicatorTaskDto) _then;

/// Create a copy of IndicatorTaskDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? indicatorToMoId = freezed,Object? parentId = freezed,Object? order = freezed,}) {
  return _then(_IndicatorTaskDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,indicatorToMoId: freezed == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

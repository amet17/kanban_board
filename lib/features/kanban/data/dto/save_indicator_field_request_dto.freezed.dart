// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_indicator_field_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveIndicatorFieldRequestDto {

@JsonKey(name: 'period_start') String get periodStart;@JsonKey(name: 'period_end') String get periodEnd;@JsonKey(name: 'period_key') String get periodKey;@JsonKey(name: 'indicator_to_mo_id') int get indicatorToMoId;@JsonKey(name: 'field_name') String get fieldName;@JsonKey(name: 'field_value') String get fieldValue;@JsonKey(name: 'auth_user_id') int get authUserId;
/// Create a copy of SaveIndicatorFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveIndicatorFieldRequestDtoCopyWith<SaveIndicatorFieldRequestDto> get copyWith => _$SaveIndicatorFieldRequestDtoCopyWithImpl<SaveIndicatorFieldRequestDto>(this as SaveIndicatorFieldRequestDto, _$identity);

  /// Serializes this SaveIndicatorFieldRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveIndicatorFieldRequestDto&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd)&&(identical(other.periodKey, periodKey) || other.periodKey == periodKey)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.authUserId, authUserId) || other.authUserId == authUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,periodStart,periodEnd,periodKey,indicatorToMoId,fieldName,fieldValue,authUserId);

@override
String toString() {
  return 'SaveIndicatorFieldRequestDto(periodStart: $periodStart, periodEnd: $periodEnd, periodKey: $periodKey, indicatorToMoId: $indicatorToMoId, fieldName: $fieldName, fieldValue: $fieldValue, authUserId: $authUserId)';
}


}

/// @nodoc
abstract mixin class $SaveIndicatorFieldRequestDtoCopyWith<$Res>  {
  factory $SaveIndicatorFieldRequestDtoCopyWith(SaveIndicatorFieldRequestDto value, $Res Function(SaveIndicatorFieldRequestDto) _then) = _$SaveIndicatorFieldRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'period_start') String periodStart,@JsonKey(name: 'period_end') String periodEnd,@JsonKey(name: 'period_key') String periodKey,@JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,@JsonKey(name: 'field_name') String fieldName,@JsonKey(name: 'field_value') String fieldValue,@JsonKey(name: 'auth_user_id') int authUserId
});




}
/// @nodoc
class _$SaveIndicatorFieldRequestDtoCopyWithImpl<$Res>
    implements $SaveIndicatorFieldRequestDtoCopyWith<$Res> {
  _$SaveIndicatorFieldRequestDtoCopyWithImpl(this._self, this._then);

  final SaveIndicatorFieldRequestDto _self;
  final $Res Function(SaveIndicatorFieldRequestDto) _then;

/// Create a copy of SaveIndicatorFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? periodStart = null,Object? periodEnd = null,Object? periodKey = null,Object? indicatorToMoId = null,Object? fieldName = null,Object? fieldValue = null,Object? authUserId = null,}) {
  return _then(_self.copyWith(
periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as String,periodEnd: null == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as String,periodKey: null == periodKey ? _self.periodKey : periodKey // ignore: cast_nullable_to_non_nullable
as String,indicatorToMoId: null == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldValue: null == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as String,authUserId: null == authUserId ? _self.authUserId : authUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveIndicatorFieldRequestDto].
extension SaveIndicatorFieldRequestDtoPatterns on SaveIndicatorFieldRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveIndicatorFieldRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveIndicatorFieldRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveIndicatorFieldRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'period_start')  String periodStart, @JsonKey(name: 'period_end')  String periodEnd, @JsonKey(name: 'period_key')  String periodKey, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'field_name')  String fieldName, @JsonKey(name: 'field_value')  String fieldValue, @JsonKey(name: 'auth_user_id')  int authUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto() when $default != null:
return $default(_that.periodStart,_that.periodEnd,_that.periodKey,_that.indicatorToMoId,_that.fieldName,_that.fieldValue,_that.authUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'period_start')  String periodStart, @JsonKey(name: 'period_end')  String periodEnd, @JsonKey(name: 'period_key')  String periodKey, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'field_name')  String fieldName, @JsonKey(name: 'field_value')  String fieldValue, @JsonKey(name: 'auth_user_id')  int authUserId)  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto():
return $default(_that.periodStart,_that.periodEnd,_that.periodKey,_that.indicatorToMoId,_that.fieldName,_that.fieldValue,_that.authUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'period_start')  String periodStart, @JsonKey(name: 'period_end')  String periodEnd, @JsonKey(name: 'period_key')  String periodKey, @JsonKey(name: 'indicator_to_mo_id')  int indicatorToMoId, @JsonKey(name: 'field_name')  String fieldName, @JsonKey(name: 'field_value')  String fieldValue, @JsonKey(name: 'auth_user_id')  int authUserId)?  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldRequestDto() when $default != null:
return $default(_that.periodStart,_that.periodEnd,_that.periodKey,_that.indicatorToMoId,_that.fieldName,_that.fieldValue,_that.authUserId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveIndicatorFieldRequestDto implements SaveIndicatorFieldRequestDto {
  const _SaveIndicatorFieldRequestDto({@JsonKey(name: 'period_start') required this.periodStart, @JsonKey(name: 'period_end') required this.periodEnd, @JsonKey(name: 'period_key') required this.periodKey, @JsonKey(name: 'indicator_to_mo_id') required this.indicatorToMoId, @JsonKey(name: 'field_name') required this.fieldName, @JsonKey(name: 'field_value') required this.fieldValue, @JsonKey(name: 'auth_user_id') required this.authUserId});
  factory _SaveIndicatorFieldRequestDto.fromJson(Map<String, dynamic> json) => _$SaveIndicatorFieldRequestDtoFromJson(json);

@override@JsonKey(name: 'period_start') final  String periodStart;
@override@JsonKey(name: 'period_end') final  String periodEnd;
@override@JsonKey(name: 'period_key') final  String periodKey;
@override@JsonKey(name: 'indicator_to_mo_id') final  int indicatorToMoId;
@override@JsonKey(name: 'field_name') final  String fieldName;
@override@JsonKey(name: 'field_value') final  String fieldValue;
@override@JsonKey(name: 'auth_user_id') final  int authUserId;

/// Create a copy of SaveIndicatorFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveIndicatorFieldRequestDtoCopyWith<_SaveIndicatorFieldRequestDto> get copyWith => __$SaveIndicatorFieldRequestDtoCopyWithImpl<_SaveIndicatorFieldRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveIndicatorFieldRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveIndicatorFieldRequestDto&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd)&&(identical(other.periodKey, periodKey) || other.periodKey == periodKey)&&(identical(other.indicatorToMoId, indicatorToMoId) || other.indicatorToMoId == indicatorToMoId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.authUserId, authUserId) || other.authUserId == authUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,periodStart,periodEnd,periodKey,indicatorToMoId,fieldName,fieldValue,authUserId);

@override
String toString() {
  return 'SaveIndicatorFieldRequestDto(periodStart: $periodStart, periodEnd: $periodEnd, periodKey: $periodKey, indicatorToMoId: $indicatorToMoId, fieldName: $fieldName, fieldValue: $fieldValue, authUserId: $authUserId)';
}


}

/// @nodoc
abstract mixin class _$SaveIndicatorFieldRequestDtoCopyWith<$Res> implements $SaveIndicatorFieldRequestDtoCopyWith<$Res> {
  factory _$SaveIndicatorFieldRequestDtoCopyWith(_SaveIndicatorFieldRequestDto value, $Res Function(_SaveIndicatorFieldRequestDto) _then) = __$SaveIndicatorFieldRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'period_start') String periodStart,@JsonKey(name: 'period_end') String periodEnd,@JsonKey(name: 'period_key') String periodKey,@JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,@JsonKey(name: 'field_name') String fieldName,@JsonKey(name: 'field_value') String fieldValue,@JsonKey(name: 'auth_user_id') int authUserId
});




}
/// @nodoc
class __$SaveIndicatorFieldRequestDtoCopyWithImpl<$Res>
    implements _$SaveIndicatorFieldRequestDtoCopyWith<$Res> {
  __$SaveIndicatorFieldRequestDtoCopyWithImpl(this._self, this._then);

  final _SaveIndicatorFieldRequestDto _self;
  final $Res Function(_SaveIndicatorFieldRequestDto) _then;

/// Create a copy of SaveIndicatorFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? periodStart = null,Object? periodEnd = null,Object? periodKey = null,Object? indicatorToMoId = null,Object? fieldName = null,Object? fieldValue = null,Object? authUserId = null,}) {
  return _then(_SaveIndicatorFieldRequestDto(
periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as String,periodEnd: null == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as String,periodKey: null == periodKey ? _self.periodKey : periodKey // ignore: cast_nullable_to_non_nullable
as String,indicatorToMoId: null == indicatorToMoId ? _self.indicatorToMoId : indicatorToMoId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldValue: null == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as String,authUserId: null == authUserId ? _self.authUserId : authUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

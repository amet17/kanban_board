// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_messages_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiMessagesDto {

 List<String>? get error; List<String>? get warning; List<String>? get info;
/// Create a copy of ApiMessagesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiMessagesDtoCopyWith<ApiMessagesDto> get copyWith => _$ApiMessagesDtoCopyWithImpl<ApiMessagesDto>(this as ApiMessagesDto, _$identity);

  /// Serializes this ApiMessagesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiMessagesDto&&const DeepCollectionEquality().equals(other.error, error)&&const DeepCollectionEquality().equals(other.warning, warning)&&const DeepCollectionEquality().equals(other.info, info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),const DeepCollectionEquality().hash(warning),const DeepCollectionEquality().hash(info));

@override
String toString() {
  return 'ApiMessagesDto(error: $error, warning: $warning, info: $info)';
}


}

/// @nodoc
abstract mixin class $ApiMessagesDtoCopyWith<$Res>  {
  factory $ApiMessagesDtoCopyWith(ApiMessagesDto value, $Res Function(ApiMessagesDto) _then) = _$ApiMessagesDtoCopyWithImpl;
@useResult
$Res call({
 List<String>? error, List<String>? warning, List<String>? info
});




}
/// @nodoc
class _$ApiMessagesDtoCopyWithImpl<$Res>
    implements $ApiMessagesDtoCopyWith<$Res> {
  _$ApiMessagesDtoCopyWithImpl(this._self, this._then);

  final ApiMessagesDto _self;
  final $Res Function(ApiMessagesDto) _then;

/// Create a copy of ApiMessagesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? warning = freezed,Object? info = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as List<String>?,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as List<String>?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiMessagesDto].
extension ApiMessagesDtoPatterns on ApiMessagesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiMessagesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiMessagesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiMessagesDto value)  $default,){
final _that = this;
switch (_that) {
case _ApiMessagesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiMessagesDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApiMessagesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? error,  List<String>? warning,  List<String>? info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiMessagesDto() when $default != null:
return $default(_that.error,_that.warning,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? error,  List<String>? warning,  List<String>? info)  $default,) {final _that = this;
switch (_that) {
case _ApiMessagesDto():
return $default(_that.error,_that.warning,_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? error,  List<String>? warning,  List<String>? info)?  $default,) {final _that = this;
switch (_that) {
case _ApiMessagesDto() when $default != null:
return $default(_that.error,_that.warning,_that.info);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiMessagesDto implements ApiMessagesDto {
  const _ApiMessagesDto({final  List<String>? error, final  List<String>? warning, final  List<String>? info}): _error = error,_warning = warning,_info = info;
  factory _ApiMessagesDto.fromJson(Map<String, dynamic> json) => _$ApiMessagesDtoFromJson(json);

 final  List<String>? _error;
@override List<String>? get error {
  final value = _error;
  if (value == null) return null;
  if (_error is EqualUnmodifiableListView) return _error;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _warning;
@override List<String>? get warning {
  final value = _warning;
  if (value == null) return null;
  if (_warning is EqualUnmodifiableListView) return _warning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _info;
@override List<String>? get info {
  final value = _info;
  if (value == null) return null;
  if (_info is EqualUnmodifiableListView) return _info;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ApiMessagesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiMessagesDtoCopyWith<_ApiMessagesDto> get copyWith => __$ApiMessagesDtoCopyWithImpl<_ApiMessagesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiMessagesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiMessagesDto&&const DeepCollectionEquality().equals(other._error, _error)&&const DeepCollectionEquality().equals(other._warning, _warning)&&const DeepCollectionEquality().equals(other._info, _info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_error),const DeepCollectionEquality().hash(_warning),const DeepCollectionEquality().hash(_info));

@override
String toString() {
  return 'ApiMessagesDto(error: $error, warning: $warning, info: $info)';
}


}

/// @nodoc
abstract mixin class _$ApiMessagesDtoCopyWith<$Res> implements $ApiMessagesDtoCopyWith<$Res> {
  factory _$ApiMessagesDtoCopyWith(_ApiMessagesDto value, $Res Function(_ApiMessagesDto) _then) = __$ApiMessagesDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String>? error, List<String>? warning, List<String>? info
});




}
/// @nodoc
class __$ApiMessagesDtoCopyWithImpl<$Res>
    implements _$ApiMessagesDtoCopyWith<$Res> {
  __$ApiMessagesDtoCopyWithImpl(this._self, this._then);

  final _ApiMessagesDto _self;
  final $Res Function(_ApiMessagesDto) _then;

/// Create a copy of ApiMessagesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? warning = freezed,Object? info = freezed,}) {
  return _then(_ApiMessagesDto(
error: freezed == error ? _self._error : error // ignore: cast_nullable_to_non_nullable
as List<String>?,warning: freezed == warning ? _self._warning : warning // ignore: cast_nullable_to_non_nullable
as List<String>?,info: freezed == info ? _self._info : info // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on

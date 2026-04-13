// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_indicator_field_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveIndicatorFieldResponseDto {

@JsonKey(name: 'MESSAGES') ApiMessagesDto? get messages;@JsonKey(name: 'STATUS') String? get status;
/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveIndicatorFieldResponseDtoCopyWith<SaveIndicatorFieldResponseDto> get copyWith => _$SaveIndicatorFieldResponseDtoCopyWithImpl<SaveIndicatorFieldResponseDto>(this as SaveIndicatorFieldResponseDto, _$identity);

  /// Serializes this SaveIndicatorFieldResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveIndicatorFieldResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,status);

@override
String toString() {
  return 'SaveIndicatorFieldResponseDto(messages: $messages, status: $status)';
}


}

/// @nodoc
abstract mixin class $SaveIndicatorFieldResponseDtoCopyWith<$Res>  {
  factory $SaveIndicatorFieldResponseDtoCopyWith(SaveIndicatorFieldResponseDto value, $Res Function(SaveIndicatorFieldResponseDto) _then) = _$SaveIndicatorFieldResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,@JsonKey(name: 'STATUS') String? status
});


$ApiMessagesDtoCopyWith<$Res>? get messages;

}
/// @nodoc
class _$SaveIndicatorFieldResponseDtoCopyWithImpl<$Res>
    implements $SaveIndicatorFieldResponseDtoCopyWith<$Res> {
  _$SaveIndicatorFieldResponseDtoCopyWithImpl(this._self, this._then);

  final SaveIndicatorFieldResponseDto _self;
  final $Res Function(SaveIndicatorFieldResponseDto) _then;

/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as ApiMessagesDto?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiMessagesDtoCopyWith<$Res>? get messages {
    if (_self.messages == null) {
    return null;
  }

  return $ApiMessagesDtoCopyWith<$Res>(_self.messages!, (value) {
    return _then(_self.copyWith(messages: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveIndicatorFieldResponseDto].
extension SaveIndicatorFieldResponseDtoPatterns on SaveIndicatorFieldResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveIndicatorFieldResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveIndicatorFieldResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveIndicatorFieldResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'STATUS')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto() when $default != null:
return $default(_that.messages,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'STATUS')  String? status)  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto():
return $default(_that.messages,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'STATUS')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _SaveIndicatorFieldResponseDto() when $default != null:
return $default(_that.messages,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveIndicatorFieldResponseDto implements SaveIndicatorFieldResponseDto {
  const _SaveIndicatorFieldResponseDto({@JsonKey(name: 'MESSAGES') this.messages, @JsonKey(name: 'STATUS') this.status});
  factory _SaveIndicatorFieldResponseDto.fromJson(Map<String, dynamic> json) => _$SaveIndicatorFieldResponseDtoFromJson(json);

@override@JsonKey(name: 'MESSAGES') final  ApiMessagesDto? messages;
@override@JsonKey(name: 'STATUS') final  String? status;

/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveIndicatorFieldResponseDtoCopyWith<_SaveIndicatorFieldResponseDto> get copyWith => __$SaveIndicatorFieldResponseDtoCopyWithImpl<_SaveIndicatorFieldResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveIndicatorFieldResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveIndicatorFieldResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,status);

@override
String toString() {
  return 'SaveIndicatorFieldResponseDto(messages: $messages, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SaveIndicatorFieldResponseDtoCopyWith<$Res> implements $SaveIndicatorFieldResponseDtoCopyWith<$Res> {
  factory _$SaveIndicatorFieldResponseDtoCopyWith(_SaveIndicatorFieldResponseDto value, $Res Function(_SaveIndicatorFieldResponseDto) _then) = __$SaveIndicatorFieldResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,@JsonKey(name: 'STATUS') String? status
});


@override $ApiMessagesDtoCopyWith<$Res>? get messages;

}
/// @nodoc
class __$SaveIndicatorFieldResponseDtoCopyWithImpl<$Res>
    implements _$SaveIndicatorFieldResponseDtoCopyWith<$Res> {
  __$SaveIndicatorFieldResponseDtoCopyWithImpl(this._self, this._then);

  final _SaveIndicatorFieldResponseDto _self;
  final $Res Function(_SaveIndicatorFieldResponseDto) _then;

/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = freezed,Object? status = freezed,}) {
  return _then(_SaveIndicatorFieldResponseDto(
messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as ApiMessagesDto?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SaveIndicatorFieldResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiMessagesDtoCopyWith<$Res>? get messages {
    if (_self.messages == null) {
    return null;
  }

  return $ApiMessagesDtoCopyWith<$Res>(_self.messages!, (value) {
    return _then(_self.copyWith(messages: value));
  });
}
}

// dart format on

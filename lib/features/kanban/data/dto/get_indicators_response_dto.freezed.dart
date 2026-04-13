// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_indicators_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetIndicatorsResponseDto {

@JsonKey(name: 'MESSAGES') ApiMessagesDto? get messages;@JsonKey(name: 'DATA') GetIndicatorsDataDto? get data;@JsonKey(name: 'STATUS') String? get status;
/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetIndicatorsResponseDtoCopyWith<GetIndicatorsResponseDto> get copyWith => _$GetIndicatorsResponseDtoCopyWithImpl<GetIndicatorsResponseDto>(this as GetIndicatorsResponseDto, _$identity);

  /// Serializes this GetIndicatorsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetIndicatorsResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.data, data) || other.data == data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,data,status);

@override
String toString() {
  return 'GetIndicatorsResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class $GetIndicatorsResponseDtoCopyWith<$Res>  {
  factory $GetIndicatorsResponseDtoCopyWith(GetIndicatorsResponseDto value, $Res Function(GetIndicatorsResponseDto) _then) = _$GetIndicatorsResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,@JsonKey(name: 'DATA') GetIndicatorsDataDto? data,@JsonKey(name: 'STATUS') String? status
});


$ApiMessagesDtoCopyWith<$Res>? get messages;$GetIndicatorsDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetIndicatorsResponseDtoCopyWithImpl<$Res>
    implements $GetIndicatorsResponseDtoCopyWith<$Res> {
  _$GetIndicatorsResponseDtoCopyWithImpl(this._self, this._then);

  final GetIndicatorsResponseDto _self;
  final $Res Function(GetIndicatorsResponseDto) _then;

/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = freezed,Object? data = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as ApiMessagesDto?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetIndicatorsDataDto?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GetIndicatorsResponseDto
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
}/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetIndicatorsDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetIndicatorsDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetIndicatorsResponseDto].
extension GetIndicatorsResponseDtoPatterns on GetIndicatorsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetIndicatorsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetIndicatorsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetIndicatorsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'DATA')  GetIndicatorsDataDto? data, @JsonKey(name: 'STATUS')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto() when $default != null:
return $default(_that.messages,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'DATA')  GetIndicatorsDataDto? data, @JsonKey(name: 'STATUS')  String? status)  $default,) {final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto():
return $default(_that.messages,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MESSAGES')  ApiMessagesDto? messages, @JsonKey(name: 'DATA')  GetIndicatorsDataDto? data, @JsonKey(name: 'STATUS')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _GetIndicatorsResponseDto() when $default != null:
return $default(_that.messages,_that.data,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetIndicatorsResponseDto implements GetIndicatorsResponseDto {
  const _GetIndicatorsResponseDto({@JsonKey(name: 'MESSAGES') this.messages, @JsonKey(name: 'DATA') this.data, @JsonKey(name: 'STATUS') this.status});
  factory _GetIndicatorsResponseDto.fromJson(Map<String, dynamic> json) => _$GetIndicatorsResponseDtoFromJson(json);

@override@JsonKey(name: 'MESSAGES') final  ApiMessagesDto? messages;
@override@JsonKey(name: 'DATA') final  GetIndicatorsDataDto? data;
@override@JsonKey(name: 'STATUS') final  String? status;

/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetIndicatorsResponseDtoCopyWith<_GetIndicatorsResponseDto> get copyWith => __$GetIndicatorsResponseDtoCopyWithImpl<_GetIndicatorsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetIndicatorsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIndicatorsResponseDto&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.data, data) || other.data == data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messages,data,status);

@override
String toString() {
  return 'GetIndicatorsResponseDto(messages: $messages, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class _$GetIndicatorsResponseDtoCopyWith<$Res> implements $GetIndicatorsResponseDtoCopyWith<$Res> {
  factory _$GetIndicatorsResponseDtoCopyWith(_GetIndicatorsResponseDto value, $Res Function(_GetIndicatorsResponseDto) _then) = __$GetIndicatorsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MESSAGES') ApiMessagesDto? messages,@JsonKey(name: 'DATA') GetIndicatorsDataDto? data,@JsonKey(name: 'STATUS') String? status
});


@override $ApiMessagesDtoCopyWith<$Res>? get messages;@override $GetIndicatorsDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$GetIndicatorsResponseDtoCopyWithImpl<$Res>
    implements _$GetIndicatorsResponseDtoCopyWith<$Res> {
  __$GetIndicatorsResponseDtoCopyWithImpl(this._self, this._then);

  final _GetIndicatorsResponseDto _self;
  final $Res Function(_GetIndicatorsResponseDto) _then;

/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = freezed,Object? data = freezed,Object? status = freezed,}) {
  return _then(_GetIndicatorsResponseDto(
messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as ApiMessagesDto?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetIndicatorsDataDto?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GetIndicatorsResponseDto
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
}/// Create a copy of GetIndicatorsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetIndicatorsDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetIndicatorsDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetIndicatorsDataDto {

@JsonKey(fromJson: _intFromJson) int? get page;@JsonKey(name: 'pages_count', fromJson: _intFromJson) int? get pagesCount;@JsonKey(name: 'rows_count', fromJson: _intFromJson) int? get rowsCount;@JsonKey(name: 'rows_total_count', fromJson: _intFromJson) int? get rowsTotalCount;@JsonKey(name: 'rows') List<IndicatorTaskDto> get rows;
/// Create a copy of GetIndicatorsDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetIndicatorsDataDtoCopyWith<GetIndicatorsDataDto> get copyWith => _$GetIndicatorsDataDtoCopyWithImpl<GetIndicatorsDataDto>(this as GetIndicatorsDataDto, _$identity);

  /// Serializes this GetIndicatorsDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetIndicatorsDataDto&&(identical(other.page, page) || other.page == page)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.rowsCount, rowsCount) || other.rowsCount == rowsCount)&&(identical(other.rowsTotalCount, rowsTotalCount) || other.rowsTotalCount == rowsTotalCount)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pagesCount,rowsCount,rowsTotalCount,const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'GetIndicatorsDataDto(page: $page, pagesCount: $pagesCount, rowsCount: $rowsCount, rowsTotalCount: $rowsTotalCount, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $GetIndicatorsDataDtoCopyWith<$Res>  {
  factory $GetIndicatorsDataDtoCopyWith(GetIndicatorsDataDto value, $Res Function(GetIndicatorsDataDto) _then) = _$GetIndicatorsDataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _intFromJson) int? page,@JsonKey(name: 'pages_count', fromJson: _intFromJson) int? pagesCount,@JsonKey(name: 'rows_count', fromJson: _intFromJson) int? rowsCount,@JsonKey(name: 'rows_total_count', fromJson: _intFromJson) int? rowsTotalCount,@JsonKey(name: 'rows') List<IndicatorTaskDto> rows
});




}
/// @nodoc
class _$GetIndicatorsDataDtoCopyWithImpl<$Res>
    implements $GetIndicatorsDataDtoCopyWith<$Res> {
  _$GetIndicatorsDataDtoCopyWithImpl(this._self, this._then);

  final GetIndicatorsDataDto _self;
  final $Res Function(GetIndicatorsDataDto) _then;

/// Create a copy of GetIndicatorsDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? pagesCount = freezed,Object? rowsCount = freezed,Object? rowsTotalCount = freezed,Object? rows = null,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pagesCount: freezed == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int?,rowsCount: freezed == rowsCount ? _self.rowsCount : rowsCount // ignore: cast_nullable_to_non_nullable
as int?,rowsTotalCount: freezed == rowsTotalCount ? _self.rowsTotalCount : rowsTotalCount // ignore: cast_nullable_to_non_nullable
as int?,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<IndicatorTaskDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetIndicatorsDataDto].
extension GetIndicatorsDataDtoPatterns on GetIndicatorsDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetIndicatorsDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetIndicatorsDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetIndicatorsDataDto value)  $default,){
final _that = this;
switch (_that) {
case _GetIndicatorsDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetIndicatorsDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetIndicatorsDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _intFromJson)  int? page, @JsonKey(name: 'pages_count', fromJson: _intFromJson)  int? pagesCount, @JsonKey(name: 'rows_count', fromJson: _intFromJson)  int? rowsCount, @JsonKey(name: 'rows_total_count', fromJson: _intFromJson)  int? rowsTotalCount, @JsonKey(name: 'rows')  List<IndicatorTaskDto> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetIndicatorsDataDto() when $default != null:
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _intFromJson)  int? page, @JsonKey(name: 'pages_count', fromJson: _intFromJson)  int? pagesCount, @JsonKey(name: 'rows_count', fromJson: _intFromJson)  int? rowsCount, @JsonKey(name: 'rows_total_count', fromJson: _intFromJson)  int? rowsTotalCount, @JsonKey(name: 'rows')  List<IndicatorTaskDto> rows)  $default,) {final _that = this;
switch (_that) {
case _GetIndicatorsDataDto():
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _intFromJson)  int? page, @JsonKey(name: 'pages_count', fromJson: _intFromJson)  int? pagesCount, @JsonKey(name: 'rows_count', fromJson: _intFromJson)  int? rowsCount, @JsonKey(name: 'rows_total_count', fromJson: _intFromJson)  int? rowsTotalCount, @JsonKey(name: 'rows')  List<IndicatorTaskDto> rows)?  $default,) {final _that = this;
switch (_that) {
case _GetIndicatorsDataDto() when $default != null:
return $default(_that.page,_that.pagesCount,_that.rowsCount,_that.rowsTotalCount,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetIndicatorsDataDto implements GetIndicatorsDataDto {
  const _GetIndicatorsDataDto({@JsonKey(fromJson: _intFromJson) this.page, @JsonKey(name: 'pages_count', fromJson: _intFromJson) this.pagesCount, @JsonKey(name: 'rows_count', fromJson: _intFromJson) this.rowsCount, @JsonKey(name: 'rows_total_count', fromJson: _intFromJson) this.rowsTotalCount, @JsonKey(name: 'rows') final  List<IndicatorTaskDto> rows = const <IndicatorTaskDto>[]}): _rows = rows;
  factory _GetIndicatorsDataDto.fromJson(Map<String, dynamic> json) => _$GetIndicatorsDataDtoFromJson(json);

@override@JsonKey(fromJson: _intFromJson) final  int? page;
@override@JsonKey(name: 'pages_count', fromJson: _intFromJson) final  int? pagesCount;
@override@JsonKey(name: 'rows_count', fromJson: _intFromJson) final  int? rowsCount;
@override@JsonKey(name: 'rows_total_count', fromJson: _intFromJson) final  int? rowsTotalCount;
 final  List<IndicatorTaskDto> _rows;
@override@JsonKey(name: 'rows') List<IndicatorTaskDto> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of GetIndicatorsDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetIndicatorsDataDtoCopyWith<_GetIndicatorsDataDto> get copyWith => __$GetIndicatorsDataDtoCopyWithImpl<_GetIndicatorsDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetIndicatorsDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIndicatorsDataDto&&(identical(other.page, page) || other.page == page)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.rowsCount, rowsCount) || other.rowsCount == rowsCount)&&(identical(other.rowsTotalCount, rowsTotalCount) || other.rowsTotalCount == rowsTotalCount)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pagesCount,rowsCount,rowsTotalCount,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'GetIndicatorsDataDto(page: $page, pagesCount: $pagesCount, rowsCount: $rowsCount, rowsTotalCount: $rowsTotalCount, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$GetIndicatorsDataDtoCopyWith<$Res> implements $GetIndicatorsDataDtoCopyWith<$Res> {
  factory _$GetIndicatorsDataDtoCopyWith(_GetIndicatorsDataDto value, $Res Function(_GetIndicatorsDataDto) _then) = __$GetIndicatorsDataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _intFromJson) int? page,@JsonKey(name: 'pages_count', fromJson: _intFromJson) int? pagesCount,@JsonKey(name: 'rows_count', fromJson: _intFromJson) int? rowsCount,@JsonKey(name: 'rows_total_count', fromJson: _intFromJson) int? rowsTotalCount,@JsonKey(name: 'rows') List<IndicatorTaskDto> rows
});




}
/// @nodoc
class __$GetIndicatorsDataDtoCopyWithImpl<$Res>
    implements _$GetIndicatorsDataDtoCopyWith<$Res> {
  __$GetIndicatorsDataDtoCopyWithImpl(this._self, this._then);

  final _GetIndicatorsDataDto _self;
  final $Res Function(_GetIndicatorsDataDto) _then;

/// Create a copy of GetIndicatorsDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? pagesCount = freezed,Object? rowsCount = freezed,Object? rowsTotalCount = freezed,Object? rows = null,}) {
  return _then(_GetIndicatorsDataDto(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pagesCount: freezed == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int?,rowsCount: freezed == rowsCount ? _self.rowsCount : rowsCount // ignore: cast_nullable_to_non_nullable
as int?,rowsTotalCount: freezed == rowsTotalCount ? _self.rowsTotalCount : rowsTotalCount // ignore: cast_nullable_to_non_nullable
as int?,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<IndicatorTaskDto>,
  ));
}


}

// dart format on

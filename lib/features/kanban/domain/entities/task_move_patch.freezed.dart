// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_move_patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskPositionUpdate {

 int get taskId; int get parentId; int get order;
/// Create a copy of TaskPositionUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskPositionUpdateCopyWith<TaskPositionUpdate> get copyWith => _$TaskPositionUpdateCopyWithImpl<TaskPositionUpdate>(this as TaskPositionUpdate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskPositionUpdate&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,parentId,order);

@override
String toString() {
  return 'TaskPositionUpdate(taskId: $taskId, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class $TaskPositionUpdateCopyWith<$Res>  {
  factory $TaskPositionUpdateCopyWith(TaskPositionUpdate value, $Res Function(TaskPositionUpdate) _then) = _$TaskPositionUpdateCopyWithImpl;
@useResult
$Res call({
 int taskId, int parentId, int order
});




}
/// @nodoc
class _$TaskPositionUpdateCopyWithImpl<$Res>
    implements $TaskPositionUpdateCopyWith<$Res> {
  _$TaskPositionUpdateCopyWithImpl(this._self, this._then);

  final TaskPositionUpdate _self;
  final $Res Function(TaskPositionUpdate) _then;

/// Create a copy of TaskPositionUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskId = null,Object? parentId = null,Object? order = null,}) {
  return _then(_self.copyWith(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskPositionUpdate].
extension TaskPositionUpdatePatterns on TaskPositionUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskPositionUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskPositionUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskPositionUpdate value)  $default,){
final _that = this;
switch (_that) {
case _TaskPositionUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskPositionUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _TaskPositionUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int taskId,  int parentId,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskPositionUpdate() when $default != null:
return $default(_that.taskId,_that.parentId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int taskId,  int parentId,  int order)  $default,) {final _that = this;
switch (_that) {
case _TaskPositionUpdate():
return $default(_that.taskId,_that.parentId,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int taskId,  int parentId,  int order)?  $default,) {final _that = this;
switch (_that) {
case _TaskPositionUpdate() when $default != null:
return $default(_that.taskId,_that.parentId,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _TaskPositionUpdate implements TaskPositionUpdate {
  const _TaskPositionUpdate({required this.taskId, required this.parentId, required this.order});
  

@override final  int taskId;
@override final  int parentId;
@override final  int order;

/// Create a copy of TaskPositionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskPositionUpdateCopyWith<_TaskPositionUpdate> get copyWith => __$TaskPositionUpdateCopyWithImpl<_TaskPositionUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskPositionUpdate&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,parentId,order);

@override
String toString() {
  return 'TaskPositionUpdate(taskId: $taskId, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$TaskPositionUpdateCopyWith<$Res> implements $TaskPositionUpdateCopyWith<$Res> {
  factory _$TaskPositionUpdateCopyWith(_TaskPositionUpdate value, $Res Function(_TaskPositionUpdate) _then) = __$TaskPositionUpdateCopyWithImpl;
@override @useResult
$Res call({
 int taskId, int parentId, int order
});




}
/// @nodoc
class __$TaskPositionUpdateCopyWithImpl<$Res>
    implements _$TaskPositionUpdateCopyWith<$Res> {
  __$TaskPositionUpdateCopyWithImpl(this._self, this._then);

  final _TaskPositionUpdate _self;
  final $Res Function(_TaskPositionUpdate) _then;

/// Create a copy of TaskPositionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? parentId = null,Object? order = null,}) {
  return _then(_TaskPositionUpdate(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TaskMovePatch {

 int get movedTaskId; int get fromParentId; int get toParentId; int get toIndex; List<TaskPositionUpdate> get updates;
/// Create a copy of TaskMovePatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskMovePatchCopyWith<TaskMovePatch> get copyWith => _$TaskMovePatchCopyWithImpl<TaskMovePatch>(this as TaskMovePatch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskMovePatch&&(identical(other.movedTaskId, movedTaskId) || other.movedTaskId == movedTaskId)&&(identical(other.fromParentId, fromParentId) || other.fromParentId == fromParentId)&&(identical(other.toParentId, toParentId) || other.toParentId == toParentId)&&(identical(other.toIndex, toIndex) || other.toIndex == toIndex)&&const DeepCollectionEquality().equals(other.updates, updates));
}


@override
int get hashCode => Object.hash(runtimeType,movedTaskId,fromParentId,toParentId,toIndex,const DeepCollectionEquality().hash(updates));

@override
String toString() {
  return 'TaskMovePatch(movedTaskId: $movedTaskId, fromParentId: $fromParentId, toParentId: $toParentId, toIndex: $toIndex, updates: $updates)';
}


}

/// @nodoc
abstract mixin class $TaskMovePatchCopyWith<$Res>  {
  factory $TaskMovePatchCopyWith(TaskMovePatch value, $Res Function(TaskMovePatch) _then) = _$TaskMovePatchCopyWithImpl;
@useResult
$Res call({
 int movedTaskId, int fromParentId, int toParentId, int toIndex, List<TaskPositionUpdate> updates
});




}
/// @nodoc
class _$TaskMovePatchCopyWithImpl<$Res>
    implements $TaskMovePatchCopyWith<$Res> {
  _$TaskMovePatchCopyWithImpl(this._self, this._then);

  final TaskMovePatch _self;
  final $Res Function(TaskMovePatch) _then;

/// Create a copy of TaskMovePatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movedTaskId = null,Object? fromParentId = null,Object? toParentId = null,Object? toIndex = null,Object? updates = null,}) {
  return _then(_self.copyWith(
movedTaskId: null == movedTaskId ? _self.movedTaskId : movedTaskId // ignore: cast_nullable_to_non_nullable
as int,fromParentId: null == fromParentId ? _self.fromParentId : fromParentId // ignore: cast_nullable_to_non_nullable
as int,toParentId: null == toParentId ? _self.toParentId : toParentId // ignore: cast_nullable_to_non_nullable
as int,toIndex: null == toIndex ? _self.toIndex : toIndex // ignore: cast_nullable_to_non_nullable
as int,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as List<TaskPositionUpdate>,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskMovePatch].
extension TaskMovePatchPatterns on TaskMovePatch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskMovePatch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskMovePatch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskMovePatch value)  $default,){
final _that = this;
switch (_that) {
case _TaskMovePatch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskMovePatch value)?  $default,){
final _that = this;
switch (_that) {
case _TaskMovePatch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int movedTaskId,  int fromParentId,  int toParentId,  int toIndex,  List<TaskPositionUpdate> updates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskMovePatch() when $default != null:
return $default(_that.movedTaskId,_that.fromParentId,_that.toParentId,_that.toIndex,_that.updates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int movedTaskId,  int fromParentId,  int toParentId,  int toIndex,  List<TaskPositionUpdate> updates)  $default,) {final _that = this;
switch (_that) {
case _TaskMovePatch():
return $default(_that.movedTaskId,_that.fromParentId,_that.toParentId,_that.toIndex,_that.updates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int movedTaskId,  int fromParentId,  int toParentId,  int toIndex,  List<TaskPositionUpdate> updates)?  $default,) {final _that = this;
switch (_that) {
case _TaskMovePatch() when $default != null:
return $default(_that.movedTaskId,_that.fromParentId,_that.toParentId,_that.toIndex,_that.updates);case _:
  return null;

}
}

}

/// @nodoc


class _TaskMovePatch implements TaskMovePatch {
  const _TaskMovePatch({required this.movedTaskId, required this.fromParentId, required this.toParentId, required this.toIndex, required final  List<TaskPositionUpdate> updates}): _updates = updates;
  

@override final  int movedTaskId;
@override final  int fromParentId;
@override final  int toParentId;
@override final  int toIndex;
 final  List<TaskPositionUpdate> _updates;
@override List<TaskPositionUpdate> get updates {
  if (_updates is EqualUnmodifiableListView) return _updates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_updates);
}


/// Create a copy of TaskMovePatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskMovePatchCopyWith<_TaskMovePatch> get copyWith => __$TaskMovePatchCopyWithImpl<_TaskMovePatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskMovePatch&&(identical(other.movedTaskId, movedTaskId) || other.movedTaskId == movedTaskId)&&(identical(other.fromParentId, fromParentId) || other.fromParentId == fromParentId)&&(identical(other.toParentId, toParentId) || other.toParentId == toParentId)&&(identical(other.toIndex, toIndex) || other.toIndex == toIndex)&&const DeepCollectionEquality().equals(other._updates, _updates));
}


@override
int get hashCode => Object.hash(runtimeType,movedTaskId,fromParentId,toParentId,toIndex,const DeepCollectionEquality().hash(_updates));

@override
String toString() {
  return 'TaskMovePatch(movedTaskId: $movedTaskId, fromParentId: $fromParentId, toParentId: $toParentId, toIndex: $toIndex, updates: $updates)';
}


}

/// @nodoc
abstract mixin class _$TaskMovePatchCopyWith<$Res> implements $TaskMovePatchCopyWith<$Res> {
  factory _$TaskMovePatchCopyWith(_TaskMovePatch value, $Res Function(_TaskMovePatch) _then) = __$TaskMovePatchCopyWithImpl;
@override @useResult
$Res call({
 int movedTaskId, int fromParentId, int toParentId, int toIndex, List<TaskPositionUpdate> updates
});




}
/// @nodoc
class __$TaskMovePatchCopyWithImpl<$Res>
    implements _$TaskMovePatchCopyWith<$Res> {
  __$TaskMovePatchCopyWithImpl(this._self, this._then);

  final _TaskMovePatch _self;
  final $Res Function(_TaskMovePatch) _then;

/// Create a copy of TaskMovePatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movedTaskId = null,Object? fromParentId = null,Object? toParentId = null,Object? toIndex = null,Object? updates = null,}) {
  return _then(_TaskMovePatch(
movedTaskId: null == movedTaskId ? _self.movedTaskId : movedTaskId // ignore: cast_nullable_to_non_nullable
as int,fromParentId: null == fromParentId ? _self.fromParentId : fromParentId // ignore: cast_nullable_to_non_nullable
as int,toParentId: null == toParentId ? _self.toParentId : toParentId // ignore: cast_nullable_to_non_nullable
as int,toIndex: null == toIndex ? _self.toIndex : toIndex // ignore: cast_nullable_to_non_nullable
as int,updates: null == updates ? _self._updates : updates // ignore: cast_nullable_to_non_nullable
as List<TaskPositionUpdate>,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KanbanTask {

 int get id; String get name; int get parentId; int get order;
/// Create a copy of KanbanTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KanbanTaskCopyWith<KanbanTask> get copyWith => _$KanbanTaskCopyWithImpl<KanbanTask>(this as KanbanTask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KanbanTask&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,parentId,order);

@override
String toString() {
  return 'KanbanTask(id: $id, name: $name, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class $KanbanTaskCopyWith<$Res>  {
  factory $KanbanTaskCopyWith(KanbanTask value, $Res Function(KanbanTask) _then) = _$KanbanTaskCopyWithImpl;
@useResult
$Res call({
 int id, String name, int parentId, int order
});




}
/// @nodoc
class _$KanbanTaskCopyWithImpl<$Res>
    implements $KanbanTaskCopyWith<$Res> {
  _$KanbanTaskCopyWithImpl(this._self, this._then);

  final KanbanTask _self;
  final $Res Function(KanbanTask) _then;

/// Create a copy of KanbanTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? parentId = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KanbanTask].
extension KanbanTaskPatterns on KanbanTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KanbanTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KanbanTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KanbanTask value)  $default,){
final _that = this;
switch (_that) {
case _KanbanTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KanbanTask value)?  $default,){
final _that = this;
switch (_that) {
case _KanbanTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int parentId,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KanbanTask() when $default != null:
return $default(_that.id,_that.name,_that.parentId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int parentId,  int order)  $default,) {final _that = this;
switch (_that) {
case _KanbanTask():
return $default(_that.id,_that.name,_that.parentId,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int parentId,  int order)?  $default,) {final _that = this;
switch (_that) {
case _KanbanTask() when $default != null:
return $default(_that.id,_that.name,_that.parentId,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _KanbanTask implements KanbanTask {
  const _KanbanTask({required this.id, required this.name, required this.parentId, required this.order});
  

@override final  int id;
@override final  String name;
@override final  int parentId;
@override final  int order;

/// Create a copy of KanbanTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KanbanTaskCopyWith<_KanbanTask> get copyWith => __$KanbanTaskCopyWithImpl<_KanbanTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KanbanTask&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,parentId,order);

@override
String toString() {
  return 'KanbanTask(id: $id, name: $name, parentId: $parentId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$KanbanTaskCopyWith<$Res> implements $KanbanTaskCopyWith<$Res> {
  factory _$KanbanTaskCopyWith(_KanbanTask value, $Res Function(_KanbanTask) _then) = __$KanbanTaskCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int parentId, int order
});




}
/// @nodoc
class __$KanbanTaskCopyWithImpl<$Res>
    implements _$KanbanTaskCopyWith<$Res> {
  __$KanbanTaskCopyWithImpl(this._self, this._then);

  final _KanbanTask _self;
  final $Res Function(_KanbanTask) _then;

/// Create a copy of KanbanTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? parentId = null,Object? order = null,}) {
  return _then(_KanbanTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

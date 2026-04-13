// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KanbanColumn {

 int get parentId; String get title; List<KanbanTask> get tasks;
/// Create a copy of KanbanColumn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KanbanColumnCopyWith<KanbanColumn> get copyWith => _$KanbanColumnCopyWithImpl<KanbanColumn>(this as KanbanColumn, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KanbanColumn&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.tasks, tasks));
}


@override
int get hashCode => Object.hash(runtimeType,parentId,title,const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'KanbanColumn(parentId: $parentId, title: $title, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $KanbanColumnCopyWith<$Res>  {
  factory $KanbanColumnCopyWith(KanbanColumn value, $Res Function(KanbanColumn) _then) = _$KanbanColumnCopyWithImpl;
@useResult
$Res call({
 int parentId, String title, List<KanbanTask> tasks
});




}
/// @nodoc
class _$KanbanColumnCopyWithImpl<$Res>
    implements $KanbanColumnCopyWith<$Res> {
  _$KanbanColumnCopyWithImpl(this._self, this._then);

  final KanbanColumn _self;
  final $Res Function(KanbanColumn) _then;

/// Create a copy of KanbanColumn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = null,Object? title = null,Object? tasks = null,}) {
  return _then(_self.copyWith(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<KanbanTask>,
  ));
}

}


/// Adds pattern-matching-related methods to [KanbanColumn].
extension KanbanColumnPatterns on KanbanColumn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KanbanColumn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KanbanColumn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KanbanColumn value)  $default,){
final _that = this;
switch (_that) {
case _KanbanColumn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KanbanColumn value)?  $default,){
final _that = this;
switch (_that) {
case _KanbanColumn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int parentId,  String title,  List<KanbanTask> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KanbanColumn() when $default != null:
return $default(_that.parentId,_that.title,_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int parentId,  String title,  List<KanbanTask> tasks)  $default,) {final _that = this;
switch (_that) {
case _KanbanColumn():
return $default(_that.parentId,_that.title,_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int parentId,  String title,  List<KanbanTask> tasks)?  $default,) {final _that = this;
switch (_that) {
case _KanbanColumn() when $default != null:
return $default(_that.parentId,_that.title,_that.tasks);case _:
  return null;

}
}

}

/// @nodoc


class _KanbanColumn implements KanbanColumn {
  const _KanbanColumn({required this.parentId, required this.title, required final  List<KanbanTask> tasks}): _tasks = tasks;
  

@override final  int parentId;
@override final  String title;
 final  List<KanbanTask> _tasks;
@override List<KanbanTask> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of KanbanColumn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KanbanColumnCopyWith<_KanbanColumn> get copyWith => __$KanbanColumnCopyWithImpl<_KanbanColumn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KanbanColumn&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,parentId,title,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'KanbanColumn(parentId: $parentId, title: $title, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$KanbanColumnCopyWith<$Res> implements $KanbanColumnCopyWith<$Res> {
  factory _$KanbanColumnCopyWith(_KanbanColumn value, $Res Function(_KanbanColumn) _then) = __$KanbanColumnCopyWithImpl;
@override @useResult
$Res call({
 int parentId, String title, List<KanbanTask> tasks
});




}
/// @nodoc
class __$KanbanColumnCopyWithImpl<$Res>
    implements _$KanbanColumnCopyWith<$Res> {
  __$KanbanColumnCopyWithImpl(this._self, this._then);

  final _KanbanColumn _self;
  final $Res Function(_KanbanColumn) _then;

/// Create a copy of KanbanColumn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = null,Object? title = null,Object? tasks = null,}) {
  return _then(_KanbanColumn(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<KanbanTask>,
  ));
}


}

// dart format on

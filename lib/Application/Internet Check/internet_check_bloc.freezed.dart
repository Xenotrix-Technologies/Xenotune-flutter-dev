// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InternetCheckEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetCheckEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetCheckEvent()';
}


}

/// @nodoc
class $InternetCheckEventCopyWith<$Res>  {
$InternetCheckEventCopyWith(InternetCheckEvent _, $Res Function(InternetCheckEvent) __);
}


/// @nodoc


class Check implements InternetCheckEvent {
  const Check({required this.context});
  

 final  BuildContext context;

/// Create a copy of InternetCheckEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckCopyWith<Check> get copyWith => _$CheckCopyWithImpl<Check>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Check&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'InternetCheckEvent.check(context: $context)';
}


}

/// @nodoc
abstract mixin class $CheckCopyWith<$Res> implements $InternetCheckEventCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) _then) = _$CheckCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class _$CheckCopyWithImpl<$Res>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(this._self, this._then);

  final Check _self;
  final $Res Function(Check) _then;

/// Create a copy of InternetCheckEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(Check(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class IfConnected implements InternetCheckEvent {
  const IfConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IfConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetCheckEvent.ifConnected()';
}


}




/// @nodoc
mixin _$InternetCheckState {

 bool get isTrue;
/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternetCheckStateCopyWith<InternetCheckState> get copyWith => _$InternetCheckStateCopyWithImpl<InternetCheckState>(this as InternetCheckState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetCheckState&&(identical(other.isTrue, isTrue) || other.isTrue == isTrue));
}


@override
int get hashCode => Object.hash(runtimeType,isTrue);

@override
String toString() {
  return 'InternetCheckState(isTrue: $isTrue)';
}


}

/// @nodoc
abstract mixin class $InternetCheckStateCopyWith<$Res>  {
  factory $InternetCheckStateCopyWith(InternetCheckState value, $Res Function(InternetCheckState) _then) = _$InternetCheckStateCopyWithImpl;
@useResult
$Res call({
 bool isTrue
});




}
/// @nodoc
class _$InternetCheckStateCopyWithImpl<$Res>
    implements $InternetCheckStateCopyWith<$Res> {
  _$InternetCheckStateCopyWithImpl(this._self, this._then);

  final InternetCheckState _self;
  final $Res Function(InternetCheckState) _then;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isTrue = null,}) {
  return _then(_self.copyWith(
isTrue: null == isTrue ? _self.isTrue : isTrue // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _InternetCheckState implements InternetCheckState {
  const _InternetCheckState({required this.isTrue});
  

@override final  bool isTrue;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InternetCheckStateCopyWith<_InternetCheckState> get copyWith => __$InternetCheckStateCopyWithImpl<_InternetCheckState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternetCheckState&&(identical(other.isTrue, isTrue) || other.isTrue == isTrue));
}


@override
int get hashCode => Object.hash(runtimeType,isTrue);

@override
String toString() {
  return 'InternetCheckState(isTrue: $isTrue)';
}


}

/// @nodoc
abstract mixin class _$InternetCheckStateCopyWith<$Res> implements $InternetCheckStateCopyWith<$Res> {
  factory _$InternetCheckStateCopyWith(_InternetCheckState value, $Res Function(_InternetCheckState) _then) = __$InternetCheckStateCopyWithImpl;
@override @useResult
$Res call({
 bool isTrue
});




}
/// @nodoc
class __$InternetCheckStateCopyWithImpl<$Res>
    implements _$InternetCheckStateCopyWith<$Res> {
  __$InternetCheckStateCopyWithImpl(this._self, this._then);

  final _InternetCheckState _self;
  final $Res Function(_InternetCheckState) _then;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isTrue = null,}) {
  return _then(_InternetCheckState(
isTrue: null == isTrue ? _self.isTrue : isTrue // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

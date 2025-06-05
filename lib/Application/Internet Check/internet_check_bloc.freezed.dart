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

 BuildContext get context;
/// Create a copy of InternetCheckEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternetCheckEventCopyWith<InternetCheckEvent> get copyWith => _$InternetCheckEventCopyWithImpl<InternetCheckEvent>(this as InternetCheckEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetCheckEvent&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'InternetCheckEvent(context: $context)';
}


}

/// @nodoc
abstract mixin class $InternetCheckEventCopyWith<$Res>  {
  factory $InternetCheckEventCopyWith(InternetCheckEvent value, $Res Function(InternetCheckEvent) _then) = _$InternetCheckEventCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class _$InternetCheckEventCopyWithImpl<$Res>
    implements $InternetCheckEventCopyWith<$Res> {
  _$InternetCheckEventCopyWithImpl(this._self, this._then);

  final InternetCheckEvent _self;
  final $Res Function(InternetCheckEvent) _then;

/// Create a copy of InternetCheckEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}

}


/// @nodoc


class Check implements InternetCheckEvent {
  const Check({required this.context});
  

@override final  BuildContext context;

/// Create a copy of InternetCheckEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
@override @useResult
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
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(Check(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc
mixin _$InternetCheckState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetCheckState()';
}


}

/// @nodoc
class $InternetCheckStateCopyWith<$Res>  {
$InternetCheckStateCopyWith(InternetCheckState _, $Res Function(InternetCheckState) __);
}


/// @nodoc


class _InternetCheckState implements InternetCheckState {
  const _InternetCheckState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternetCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetCheckState()';
}


}




// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerEvent()';
}


}

/// @nodoc
class $TimerEventCopyWith<$Res>  {
$TimerEventCopyWith(TimerEvent _, $Res Function(TimerEvent) __);
}


/// @nodoc


class Hour implements TimerEvent {
  const Hour({required this.hour});
  

 final  int hour;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourCopyWith<Hour> get copyWith => _$HourCopyWithImpl<Hour>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hour&&(identical(other.hour, hour) || other.hour == hour));
}


@override
int get hashCode => Object.hash(runtimeType,hour);

@override
String toString() {
  return 'TimerEvent.hour(hour: $hour)';
}


}

/// @nodoc
abstract mixin class $HourCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $HourCopyWith(Hour value, $Res Function(Hour) _then) = _$HourCopyWithImpl;
@useResult
$Res call({
 int hour
});




}
/// @nodoc
class _$HourCopyWithImpl<$Res>
    implements $HourCopyWith<$Res> {
  _$HourCopyWithImpl(this._self, this._then);

  final Hour _self;
  final $Res Function(Hour) _then;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hour = null,}) {
  return _then(Hour(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Minute implements TimerEvent {
  const Minute({required this.minute});
  

 final  int minute;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinuteCopyWith<Minute> get copyWith => _$MinuteCopyWithImpl<Minute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Minute&&(identical(other.minute, minute) || other.minute == minute));
}


@override
int get hashCode => Object.hash(runtimeType,minute);

@override
String toString() {
  return 'TimerEvent.minute(minute: $minute)';
}


}

/// @nodoc
abstract mixin class $MinuteCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $MinuteCopyWith(Minute value, $Res Function(Minute) _then) = _$MinuteCopyWithImpl;
@useResult
$Res call({
 int minute
});




}
/// @nodoc
class _$MinuteCopyWithImpl<$Res>
    implements $MinuteCopyWith<$Res> {
  _$MinuteCopyWithImpl(this._self, this._then);

  final Minute _self;
  final $Res Function(Minute) _then;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minute = null,}) {
  return _then(Minute(
minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Set implements TimerEvent {
  const Set({required this.hour, required this.minute});
  

 final  int hour;
 final  int minute;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetCopyWith<Set> get copyWith => _$SetCopyWithImpl<Set>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Set&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}


@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString() {
  return 'TimerEvent.set(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class $SetCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) _then) = _$SetCopyWithImpl;
@useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class _$SetCopyWithImpl<$Res>
    implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._self, this._then);

  final Set _self;
  final $Res Function(Set) _then;

/// Create a copy of TimerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(Set(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Cancel implements TimerEvent {
  const Cancel();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cancel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerEvent.cancel()';
}


}




/// @nodoc
mixin _$TimerState {

 int get hour; int get minute; int get settedHour; int get settedMinute;
/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerStateCopyWith<TimerState> get copyWith => _$TimerStateCopyWithImpl<TimerState>(this as TimerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerState&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute)&&(identical(other.settedHour, settedHour) || other.settedHour == settedHour)&&(identical(other.settedMinute, settedMinute) || other.settedMinute == settedMinute));
}


@override
int get hashCode => Object.hash(runtimeType,hour,minute,settedHour,settedMinute);

@override
String toString() {
  return 'TimerState(hour: $hour, minute: $minute, settedHour: $settedHour, settedMinute: $settedMinute)';
}


}

/// @nodoc
abstract mixin class $TimerStateCopyWith<$Res>  {
  factory $TimerStateCopyWith(TimerState value, $Res Function(TimerState) _then) = _$TimerStateCopyWithImpl;
@useResult
$Res call({
 int hour, int minute, int settedHour, int settedMinute
});




}
/// @nodoc
class _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._self, this._then);

  final TimerState _self;
  final $Res Function(TimerState) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = null,Object? minute = null,Object? settedHour = null,Object? settedMinute = null,}) {
  return _then(_self.copyWith(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,settedHour: null == settedHour ? _self.settedHour : settedHour // ignore: cast_nullable_to_non_nullable
as int,settedMinute: null == settedMinute ? _self.settedMinute : settedMinute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _TimerState implements TimerState {
  const _TimerState({required this.hour, required this.minute, required this.settedHour, required this.settedMinute});
  

@override final  int hour;
@override final  int minute;
@override final  int settedHour;
@override final  int settedMinute;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerStateCopyWith<_TimerState> get copyWith => __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerState&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute)&&(identical(other.settedHour, settedHour) || other.settedHour == settedHour)&&(identical(other.settedMinute, settedMinute) || other.settedMinute == settedMinute));
}


@override
int get hashCode => Object.hash(runtimeType,hour,minute,settedHour,settedMinute);

@override
String toString() {
  return 'TimerState(hour: $hour, minute: $minute, settedHour: $settedHour, settedMinute: $settedMinute)';
}


}

/// @nodoc
abstract mixin class _$TimerStateCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateCopyWith(_TimerState value, $Res Function(_TimerState) _then) = __$TimerStateCopyWithImpl;
@override @useResult
$Res call({
 int hour, int minute, int settedHour, int settedMinute
});




}
/// @nodoc
class __$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateCopyWith<$Res> {
  __$TimerStateCopyWithImpl(this._self, this._then);

  final _TimerState _self;
  final $Res Function(_TimerState) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? minute = null,Object? settedHour = null,Object? settedMinute = null,}) {
  return _then(_TimerState(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,settedHour: null == settedHour ? _self.settedHour : settedHour // ignore: cast_nullable_to_non_nullable
as int,settedMinute: null == settedMinute ? _self.settedMinute : settedMinute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

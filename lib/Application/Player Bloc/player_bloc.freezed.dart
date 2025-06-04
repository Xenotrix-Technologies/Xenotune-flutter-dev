// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent()';
}


}

/// @nodoc
class $PlayerEventCopyWith<$Res>  {
$PlayerEventCopyWith(PlayerEvent _, $Res Function(PlayerEvent) __);
}


/// @nodoc


class Play implements PlayerEvent {
  const Play();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Play);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent.play()';
}


}




/// @nodoc


class Pause implements PlayerEvent {
  const Pause();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent.pause()';
}


}




/// @nodoc


class StartWaveForm implements PlayerEvent {
  const StartWaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent.startWaveForm()';
}


}




/// @nodoc


class StopWaveForm implements PlayerEvent {
  const StopWaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent.stopWaveForm()';
}


}




/// @nodoc


class WaveForm implements PlayerEvent {
  const WaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerEvent.waveForm()';
}


}




/// @nodoc
mixin _$PlayerState {

 bool get isPause; List<double> get heights;
/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerStateCopyWith<PlayerState> get copyWith => _$PlayerStateCopyWithImpl<PlayerState>(this as PlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerState&&(identical(other.isPause, isPause) || other.isPause == isPause)&&const DeepCollectionEquality().equals(other.heights, heights));
}


@override
int get hashCode => Object.hash(runtimeType,isPause,const DeepCollectionEquality().hash(heights));

@override
String toString() {
  return 'PlayerState(isPause: $isPause, heights: $heights)';
}


}

/// @nodoc
abstract mixin class $PlayerStateCopyWith<$Res>  {
  factory $PlayerStateCopyWith(PlayerState value, $Res Function(PlayerState) _then) = _$PlayerStateCopyWithImpl;
@useResult
$Res call({
 bool isPause, List<double> heights
});




}
/// @nodoc
class _$PlayerStateCopyWithImpl<$Res>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._self, this._then);

  final PlayerState _self;
  final $Res Function(PlayerState) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPause = null,Object? heights = null,}) {
  return _then(_self.copyWith(
isPause: null == isPause ? _self.isPause : isPause // ignore: cast_nullable_to_non_nullable
as bool,heights: null == heights ? _self.heights : heights // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// @nodoc


class _PlayerState implements PlayerState {
  const _PlayerState({required this.isPause, required final  List<double> heights}): _heights = heights;
  

@override final  bool isPause;
 final  List<double> _heights;
@override List<double> get heights {
  if (_heights is EqualUnmodifiableListView) return _heights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heights);
}


/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerStateCopyWith<_PlayerState> get copyWith => __$PlayerStateCopyWithImpl<_PlayerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerState&&(identical(other.isPause, isPause) || other.isPause == isPause)&&const DeepCollectionEquality().equals(other._heights, _heights));
}


@override
int get hashCode => Object.hash(runtimeType,isPause,const DeepCollectionEquality().hash(_heights));

@override
String toString() {
  return 'PlayerState(isPause: $isPause, heights: $heights)';
}


}

/// @nodoc
abstract mixin class _$PlayerStateCopyWith<$Res> implements $PlayerStateCopyWith<$Res> {
  factory _$PlayerStateCopyWith(_PlayerState value, $Res Function(_PlayerState) _then) = __$PlayerStateCopyWithImpl;
@override @useResult
$Res call({
 bool isPause, List<double> heights
});




}
/// @nodoc
class __$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerStateCopyWith<$Res> {
  __$PlayerStateCopyWithImpl(this._self, this._then);

  final _PlayerState _self;
  final $Res Function(_PlayerState) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPause = null,Object? heights = null,}) {
  return _then(_PlayerState(
isPause: null == isPause ? _self.isPause : isPause // ignore: cast_nullable_to_non_nullable
as bool,heights: null == heights ? _self._heights : heights // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on

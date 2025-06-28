// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MusicControlEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MusicControlEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent()';
}


}

/// @nodoc
class $MusicControlEventCopyWith<$Res>  {
$MusicControlEventCopyWith(MusicControlEvent _, $Res Function(MusicControlEvent) __);
}


/// @nodoc


class Play implements MusicControlEvent {
  const Play({required this.mood});
  

 final  String mood;

/// Create a copy of MusicControlEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayCopyWith<Play> get copyWith => _$PlayCopyWithImpl<Play>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Play&&(identical(other.mood, mood) || other.mood == mood));
}


@override
int get hashCode => Object.hash(runtimeType,mood);

@override
String toString() {
  return 'MusicControlEvent.play(mood: $mood)';
}


}

/// @nodoc
abstract mixin class $PlayCopyWith<$Res> implements $MusicControlEventCopyWith<$Res> {
  factory $PlayCopyWith(Play value, $Res Function(Play) _then) = _$PlayCopyWithImpl;
@useResult
$Res call({
 String mood
});




}
/// @nodoc
class _$PlayCopyWithImpl<$Res>
    implements $PlayCopyWith<$Res> {
  _$PlayCopyWithImpl(this._self, this._then);

  final Play _self;
  final $Res Function(Play) _then;

/// Create a copy of MusicControlEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mood = null,}) {
  return _then(Play(
mood: null == mood ? _self.mood : mood // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Load implements MusicControlEvent {
  const Load();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Load);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.load()';
}


}




/// @nodoc


class OnTapPlay implements MusicControlEvent {
  const OnTapPlay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapPlay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.onTapPlay()';
}


}




/// @nodoc


class Pause implements MusicControlEvent {
  const Pause();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.pause()';
}


}




/// @nodoc


class Stop implements MusicControlEvent {
  const Stop();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stop);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.stop()';
}


}




/// @nodoc


class StartWaveForm implements MusicControlEvent {
  const StartWaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.startWaveForm()';
}


}




/// @nodoc


class StopWaveForm implements MusicControlEvent {
  const StopWaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.stopWaveForm()';
}


}




/// @nodoc


class WaveForm implements MusicControlEvent {
  const WaveForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaveForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MusicControlEvent.waveForm()';
}


}




/// @nodoc
mixin _$MusicControlState {

 bool get isLoading; bool get isError; String get animation; bool get isPlay; bool get onTapPlay; bool get isPause; bool get isStoped; List<double> get heights;
/// Create a copy of MusicControlState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MusicControlStateCopyWith<MusicControlState> get copyWith => _$MusicControlStateCopyWithImpl<MusicControlState>(this as MusicControlState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MusicControlState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.isPlay, isPlay) || other.isPlay == isPlay)&&(identical(other.onTapPlay, onTapPlay) || other.onTapPlay == onTapPlay)&&(identical(other.isPause, isPause) || other.isPause == isPause)&&(identical(other.isStoped, isStoped) || other.isStoped == isStoped)&&const DeepCollectionEquality().equals(other.heights, heights));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,animation,isPlay,onTapPlay,isPause,isStoped,const DeepCollectionEquality().hash(heights));

@override
String toString() {
  return 'MusicControlState(isLoading: $isLoading, isError: $isError, animation: $animation, isPlay: $isPlay, onTapPlay: $onTapPlay, isPause: $isPause, isStoped: $isStoped, heights: $heights)';
}


}

/// @nodoc
abstract mixin class $MusicControlStateCopyWith<$Res>  {
  factory $MusicControlStateCopyWith(MusicControlState value, $Res Function(MusicControlState) _then) = _$MusicControlStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String animation, bool isPlay, bool onTapPlay, bool isPause, bool isStoped, List<double> heights
});




}
/// @nodoc
class _$MusicControlStateCopyWithImpl<$Res>
    implements $MusicControlStateCopyWith<$Res> {
  _$MusicControlStateCopyWithImpl(this._self, this._then);

  final MusicControlState _self;
  final $Res Function(MusicControlState) _then;

/// Create a copy of MusicControlState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? animation = null,Object? isPlay = null,Object? onTapPlay = null,Object? isPause = null,Object? isStoped = null,Object? heights = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,animation: null == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
as String,isPlay: null == isPlay ? _self.isPlay : isPlay // ignore: cast_nullable_to_non_nullable
as bool,onTapPlay: null == onTapPlay ? _self.onTapPlay : onTapPlay // ignore: cast_nullable_to_non_nullable
as bool,isPause: null == isPause ? _self.isPause : isPause // ignore: cast_nullable_to_non_nullable
as bool,isStoped: null == isStoped ? _self.isStoped : isStoped // ignore: cast_nullable_to_non_nullable
as bool,heights: null == heights ? _self.heights : heights // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// @nodoc


class _MusicControlState implements MusicControlState {
  const _MusicControlState({required this.isLoading, required this.isError, required this.animation, required this.isPlay, required this.onTapPlay, required this.isPause, required this.isStoped, required final  List<double> heights}): _heights = heights;
  

@override final  bool isLoading;
@override final  bool isError;
@override final  String animation;
@override final  bool isPlay;
@override final  bool onTapPlay;
@override final  bool isPause;
@override final  bool isStoped;
 final  List<double> _heights;
@override List<double> get heights {
  if (_heights is EqualUnmodifiableListView) return _heights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heights);
}


/// Create a copy of MusicControlState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MusicControlStateCopyWith<_MusicControlState> get copyWith => __$MusicControlStateCopyWithImpl<_MusicControlState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MusicControlState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.animation, animation) || other.animation == animation)&&(identical(other.isPlay, isPlay) || other.isPlay == isPlay)&&(identical(other.onTapPlay, onTapPlay) || other.onTapPlay == onTapPlay)&&(identical(other.isPause, isPause) || other.isPause == isPause)&&(identical(other.isStoped, isStoped) || other.isStoped == isStoped)&&const DeepCollectionEquality().equals(other._heights, _heights));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,animation,isPlay,onTapPlay,isPause,isStoped,const DeepCollectionEquality().hash(_heights));

@override
String toString() {
  return 'MusicControlState(isLoading: $isLoading, isError: $isError, animation: $animation, isPlay: $isPlay, onTapPlay: $onTapPlay, isPause: $isPause, isStoped: $isStoped, heights: $heights)';
}


}

/// @nodoc
abstract mixin class _$MusicControlStateCopyWith<$Res> implements $MusicControlStateCopyWith<$Res> {
  factory _$MusicControlStateCopyWith(_MusicControlState value, $Res Function(_MusicControlState) _then) = __$MusicControlStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String animation, bool isPlay, bool onTapPlay, bool isPause, bool isStoped, List<double> heights
});




}
/// @nodoc
class __$MusicControlStateCopyWithImpl<$Res>
    implements _$MusicControlStateCopyWith<$Res> {
  __$MusicControlStateCopyWithImpl(this._self, this._then);

  final _MusicControlState _self;
  final $Res Function(_MusicControlState) _then;

/// Create a copy of MusicControlState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? animation = null,Object? isPlay = null,Object? onTapPlay = null,Object? isPause = null,Object? isStoped = null,Object? heights = null,}) {
  return _then(_MusicControlState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,animation: null == animation ? _self.animation : animation // ignore: cast_nullable_to_non_nullable
as String,isPlay: null == isPlay ? _self.isPlay : isPlay // ignore: cast_nullable_to_non_nullable
as bool,onTapPlay: null == onTapPlay ? _self.onTapPlay : onTapPlay // ignore: cast_nullable_to_non_nullable
as bool,isPause: null == isPause ? _self.isPause : isPause // ignore: cast_nullable_to_non_nullable
as bool,isStoped: null == isStoped ? _self.isStoped : isStoped // ignore: cast_nullable_to_non_nullable
as bool,heights: null == heights ? _self._heights : heights // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on

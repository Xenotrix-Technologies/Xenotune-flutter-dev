// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sounds_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SoundsControlEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundsControlEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SoundsControlEvent()';
}


}

/// @nodoc
class $SoundsControlEventCopyWith<$Res>  {
$SoundsControlEventCopyWith(SoundsControlEvent _, $Res Function(SoundsControlEvent) __);
}


/// @nodoc


class OnVolumeChange implements SoundsControlEvent {
  const OnVolumeChange({required this.volume, required this.soundId});
  

 final  double volume;
 final  String soundId;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnVolumeChangeCopyWith<OnVolumeChange> get copyWith => _$OnVolumeChangeCopyWithImpl<OnVolumeChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnVolumeChange&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.soundId, soundId) || other.soundId == soundId));
}


@override
int get hashCode => Object.hash(runtimeType,volume,soundId);

@override
String toString() {
  return 'SoundsControlEvent.onVolumeChange(volume: $volume, soundId: $soundId)';
}


}

/// @nodoc
abstract mixin class $OnVolumeChangeCopyWith<$Res> implements $SoundsControlEventCopyWith<$Res> {
  factory $OnVolumeChangeCopyWith(OnVolumeChange value, $Res Function(OnVolumeChange) _then) = _$OnVolumeChangeCopyWithImpl;
@useResult
$Res call({
 double volume, String soundId
});




}
/// @nodoc
class _$OnVolumeChangeCopyWithImpl<$Res>
    implements $OnVolumeChangeCopyWith<$Res> {
  _$OnVolumeChangeCopyWithImpl(this._self, this._then);

  final OnVolumeChange _self;
  final $Res Function(OnVolumeChange) _then;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? volume = null,Object? soundId = null,}) {
  return _then(OnVolumeChange(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,soundId: null == soundId ? _self.soundId : soundId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnPaused implements SoundsControlEvent {
  const OnPaused();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnPaused);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SoundsControlEvent.onPaused()';
}


}




/// @nodoc


class OnTapMute implements SoundsControlEvent {
  const OnTapMute({required this.soundId});
  

 final  String soundId;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTapMuteCopyWith<OnTapMute> get copyWith => _$OnTapMuteCopyWithImpl<OnTapMute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTapMute&&(identical(other.soundId, soundId) || other.soundId == soundId));
}


@override
int get hashCode => Object.hash(runtimeType,soundId);

@override
String toString() {
  return 'SoundsControlEvent.onTapMute(soundId: $soundId)';
}


}

/// @nodoc
abstract mixin class $OnTapMuteCopyWith<$Res> implements $SoundsControlEventCopyWith<$Res> {
  factory $OnTapMuteCopyWith(OnTapMute value, $Res Function(OnTapMute) _then) = _$OnTapMuteCopyWithImpl;
@useResult
$Res call({
 String soundId
});




}
/// @nodoc
class _$OnTapMuteCopyWithImpl<$Res>
    implements $OnTapMuteCopyWith<$Res> {
  _$OnTapMuteCopyWithImpl(this._self, this._then);

  final OnTapMute _self;
  final $Res Function(OnTapMute) _then;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? soundId = null,}) {
  return _then(OnTapMute(
soundId: null == soundId ? _self.soundId : soundId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnPlayed implements SoundsControlEvent {
  const OnPlayed({required this.path, required this.sID});
  

 final  String path;
 final  String sID;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnPlayedCopyWith<OnPlayed> get copyWith => _$OnPlayedCopyWithImpl<OnPlayed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnPlayed&&(identical(other.path, path) || other.path == path)&&(identical(other.sID, sID) || other.sID == sID));
}


@override
int get hashCode => Object.hash(runtimeType,path,sID);

@override
String toString() {
  return 'SoundsControlEvent.onPlayed(path: $path, sID: $sID)';
}


}

/// @nodoc
abstract mixin class $OnPlayedCopyWith<$Res> implements $SoundsControlEventCopyWith<$Res> {
  factory $OnPlayedCopyWith(OnPlayed value, $Res Function(OnPlayed) _then) = _$OnPlayedCopyWithImpl;
@useResult
$Res call({
 String path, String sID
});




}
/// @nodoc
class _$OnPlayedCopyWithImpl<$Res>
    implements $OnPlayedCopyWith<$Res> {
  _$OnPlayedCopyWithImpl(this._self, this._then);

  final OnPlayed _self;
  final $Res Function(OnPlayed) _then;

/// Create a copy of SoundsControlEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? sID = null,}) {
  return _then(OnPlayed(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sID: null == sID ? _self.sID : sID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SoundsControlState {

 Map<String, double> get volumes; Map<String, bool> get playingStatus;
/// Create a copy of SoundsControlState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundsControlStateCopyWith<SoundsControlState> get copyWith => _$SoundsControlStateCopyWithImpl<SoundsControlState>(this as SoundsControlState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundsControlState&&const DeepCollectionEquality().equals(other.volumes, volumes)&&const DeepCollectionEquality().equals(other.playingStatus, playingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(volumes),const DeepCollectionEquality().hash(playingStatus));

@override
String toString() {
  return 'SoundsControlState(volumes: $volumes, playingStatus: $playingStatus)';
}


}

/// @nodoc
abstract mixin class $SoundsControlStateCopyWith<$Res>  {
  factory $SoundsControlStateCopyWith(SoundsControlState value, $Res Function(SoundsControlState) _then) = _$SoundsControlStateCopyWithImpl;
@useResult
$Res call({
 Map<String, double> volumes, Map<String, bool> playingStatus
});




}
/// @nodoc
class _$SoundsControlStateCopyWithImpl<$Res>
    implements $SoundsControlStateCopyWith<$Res> {
  _$SoundsControlStateCopyWithImpl(this._self, this._then);

  final SoundsControlState _self;
  final $Res Function(SoundsControlState) _then;

/// Create a copy of SoundsControlState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volumes = null,Object? playingStatus = null,}) {
  return _then(_self.copyWith(
volumes: null == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as Map<String, double>,playingStatus: null == playingStatus ? _self.playingStatus : playingStatus // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}

}


/// @nodoc


class _SoundsControlState implements SoundsControlState {
  const _SoundsControlState({required final  Map<String, double> volumes, required final  Map<String, bool> playingStatus}): _volumes = volumes,_playingStatus = playingStatus;
  

 final  Map<String, double> _volumes;
@override Map<String, double> get volumes {
  if (_volumes is EqualUnmodifiableMapView) return _volumes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_volumes);
}

 final  Map<String, bool> _playingStatus;
@override Map<String, bool> get playingStatus {
  if (_playingStatus is EqualUnmodifiableMapView) return _playingStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_playingStatus);
}


/// Create a copy of SoundsControlState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoundsControlStateCopyWith<_SoundsControlState> get copyWith => __$SoundsControlStateCopyWithImpl<_SoundsControlState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundsControlState&&const DeepCollectionEquality().equals(other._volumes, _volumes)&&const DeepCollectionEquality().equals(other._playingStatus, _playingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_volumes),const DeepCollectionEquality().hash(_playingStatus));

@override
String toString() {
  return 'SoundsControlState(volumes: $volumes, playingStatus: $playingStatus)';
}


}

/// @nodoc
abstract mixin class _$SoundsControlStateCopyWith<$Res> implements $SoundsControlStateCopyWith<$Res> {
  factory _$SoundsControlStateCopyWith(_SoundsControlState value, $Res Function(_SoundsControlState) _then) = __$SoundsControlStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, double> volumes, Map<String, bool> playingStatus
});




}
/// @nodoc
class __$SoundsControlStateCopyWithImpl<$Res>
    implements _$SoundsControlStateCopyWith<$Res> {
  __$SoundsControlStateCopyWithImpl(this._self, this._then);

  final _SoundsControlState _self;
  final $Res Function(_SoundsControlState) _then;

/// Create a copy of SoundsControlState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volumes = null,Object? playingStatus = null,}) {
  return _then(_SoundsControlState(
volumes: null == volumes ? _self._volumes : volumes // ignore: cast_nullable_to_non_nullable
as Map<String, double>,playingStatus: null == playingStatus ? _self._playingStatus : playingStatus // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

// dart format on

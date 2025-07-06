// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sounds_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SoundsControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double volume, String soundId) onVolumeChange,
    required TResult Function() onPaused,
    required TResult Function(String soundId) onTapMute,
    required TResult Function(String path, String sID) onPlayed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double volume, String soundId)? onVolumeChange,
    TResult? Function()? onPaused,
    TResult? Function(String soundId)? onTapMute,
    TResult? Function(String path, String sID)? onPlayed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double volume, String soundId)? onVolumeChange,
    TResult Function()? onPaused,
    TResult Function(String soundId)? onTapMute,
    TResult Function(String path, String sID)? onPlayed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnVolumeChange value) onVolumeChange,
    required TResult Function(OnPaused value) onPaused,
    required TResult Function(OnTapMute value) onTapMute,
    required TResult Function(OnPlayed value) onPlayed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnVolumeChange value)? onVolumeChange,
    TResult? Function(OnPaused value)? onPaused,
    TResult? Function(OnTapMute value)? onTapMute,
    TResult? Function(OnPlayed value)? onPlayed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnVolumeChange value)? onVolumeChange,
    TResult Function(OnPaused value)? onPaused,
    TResult Function(OnTapMute value)? onTapMute,
    TResult Function(OnPlayed value)? onPlayed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundsControlEventCopyWith<$Res> {
  factory $SoundsControlEventCopyWith(
    SoundsControlEvent value,
    $Res Function(SoundsControlEvent) then,
  ) = _$SoundsControlEventCopyWithImpl<$Res, SoundsControlEvent>;
}

/// @nodoc
class _$SoundsControlEventCopyWithImpl<$Res, $Val extends SoundsControlEvent>
    implements $SoundsControlEventCopyWith<$Res> {
  _$SoundsControlEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnVolumeChangeImplCopyWith<$Res> {
  factory _$$OnVolumeChangeImplCopyWith(
    _$OnVolumeChangeImpl value,
    $Res Function(_$OnVolumeChangeImpl) then,
  ) = __$$OnVolumeChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double volume, String soundId});
}

/// @nodoc
class __$$OnVolumeChangeImplCopyWithImpl<$Res>
    extends _$SoundsControlEventCopyWithImpl<$Res, _$OnVolumeChangeImpl>
    implements _$$OnVolumeChangeImplCopyWith<$Res> {
  __$$OnVolumeChangeImplCopyWithImpl(
    _$OnVolumeChangeImpl _value,
    $Res Function(_$OnVolumeChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? volume = null, Object? soundId = null}) {
    return _then(
      _$OnVolumeChangeImpl(
        volume:
            null == volume
                ? _value.volume
                : volume // ignore: cast_nullable_to_non_nullable
                    as double,
        soundId:
            null == soundId
                ? _value.soundId
                : soundId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnVolumeChangeImpl implements OnVolumeChange {
  const _$OnVolumeChangeImpl({required this.volume, required this.soundId});

  @override
  final double volume;
  @override
  final String soundId;

  @override
  String toString() {
    return 'SoundsControlEvent.onVolumeChange(volume: $volume, soundId: $soundId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnVolumeChangeImpl &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.soundId, soundId) || other.soundId == soundId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume, soundId);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnVolumeChangeImplCopyWith<_$OnVolumeChangeImpl> get copyWith =>
      __$$OnVolumeChangeImplCopyWithImpl<_$OnVolumeChangeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double volume, String soundId) onVolumeChange,
    required TResult Function() onPaused,
    required TResult Function(String soundId) onTapMute,
    required TResult Function(String path, String sID) onPlayed,
  }) {
    return onVolumeChange(volume, soundId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double volume, String soundId)? onVolumeChange,
    TResult? Function()? onPaused,
    TResult? Function(String soundId)? onTapMute,
    TResult? Function(String path, String sID)? onPlayed,
  }) {
    return onVolumeChange?.call(volume, soundId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double volume, String soundId)? onVolumeChange,
    TResult Function()? onPaused,
    TResult Function(String soundId)? onTapMute,
    TResult Function(String path, String sID)? onPlayed,
    required TResult orElse(),
  }) {
    if (onVolumeChange != null) {
      return onVolumeChange(volume, soundId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnVolumeChange value) onVolumeChange,
    required TResult Function(OnPaused value) onPaused,
    required TResult Function(OnTapMute value) onTapMute,
    required TResult Function(OnPlayed value) onPlayed,
  }) {
    return onVolumeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnVolumeChange value)? onVolumeChange,
    TResult? Function(OnPaused value)? onPaused,
    TResult? Function(OnTapMute value)? onTapMute,
    TResult? Function(OnPlayed value)? onPlayed,
  }) {
    return onVolumeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnVolumeChange value)? onVolumeChange,
    TResult Function(OnPaused value)? onPaused,
    TResult Function(OnTapMute value)? onTapMute,
    TResult Function(OnPlayed value)? onPlayed,
    required TResult orElse(),
  }) {
    if (onVolumeChange != null) {
      return onVolumeChange(this);
    }
    return orElse();
  }
}

abstract class OnVolumeChange implements SoundsControlEvent {
  const factory OnVolumeChange({
    required final double volume,
    required final String soundId,
  }) = _$OnVolumeChangeImpl;

  double get volume;
  String get soundId;

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnVolumeChangeImplCopyWith<_$OnVolumeChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPausedImplCopyWith<$Res> {
  factory _$$OnPausedImplCopyWith(
    _$OnPausedImpl value,
    $Res Function(_$OnPausedImpl) then,
  ) = __$$OnPausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnPausedImplCopyWithImpl<$Res>
    extends _$SoundsControlEventCopyWithImpl<$Res, _$OnPausedImpl>
    implements _$$OnPausedImplCopyWith<$Res> {
  __$$OnPausedImplCopyWithImpl(
    _$OnPausedImpl _value,
    $Res Function(_$OnPausedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnPausedImpl implements OnPaused {
  const _$OnPausedImpl();

  @override
  String toString() {
    return 'SoundsControlEvent.onPaused()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnPausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double volume, String soundId) onVolumeChange,
    required TResult Function() onPaused,
    required TResult Function(String soundId) onTapMute,
    required TResult Function(String path, String sID) onPlayed,
  }) {
    return onPaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double volume, String soundId)? onVolumeChange,
    TResult? Function()? onPaused,
    TResult? Function(String soundId)? onTapMute,
    TResult? Function(String path, String sID)? onPlayed,
  }) {
    return onPaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double volume, String soundId)? onVolumeChange,
    TResult Function()? onPaused,
    TResult Function(String soundId)? onTapMute,
    TResult Function(String path, String sID)? onPlayed,
    required TResult orElse(),
  }) {
    if (onPaused != null) {
      return onPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnVolumeChange value) onVolumeChange,
    required TResult Function(OnPaused value) onPaused,
    required TResult Function(OnTapMute value) onTapMute,
    required TResult Function(OnPlayed value) onPlayed,
  }) {
    return onPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnVolumeChange value)? onVolumeChange,
    TResult? Function(OnPaused value)? onPaused,
    TResult? Function(OnTapMute value)? onTapMute,
    TResult? Function(OnPlayed value)? onPlayed,
  }) {
    return onPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnVolumeChange value)? onVolumeChange,
    TResult Function(OnPaused value)? onPaused,
    TResult Function(OnTapMute value)? onTapMute,
    TResult Function(OnPlayed value)? onPlayed,
    required TResult orElse(),
  }) {
    if (onPaused != null) {
      return onPaused(this);
    }
    return orElse();
  }
}

abstract class OnPaused implements SoundsControlEvent {
  const factory OnPaused() = _$OnPausedImpl;
}

/// @nodoc
abstract class _$$OnTapMuteImplCopyWith<$Res> {
  factory _$$OnTapMuteImplCopyWith(
    _$OnTapMuteImpl value,
    $Res Function(_$OnTapMuteImpl) then,
  ) = __$$OnTapMuteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String soundId});
}

/// @nodoc
class __$$OnTapMuteImplCopyWithImpl<$Res>
    extends _$SoundsControlEventCopyWithImpl<$Res, _$OnTapMuteImpl>
    implements _$$OnTapMuteImplCopyWith<$Res> {
  __$$OnTapMuteImplCopyWithImpl(
    _$OnTapMuteImpl _value,
    $Res Function(_$OnTapMuteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? soundId = null}) {
    return _then(
      _$OnTapMuteImpl(
        soundId:
            null == soundId
                ? _value.soundId
                : soundId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnTapMuteImpl implements OnTapMute {
  const _$OnTapMuteImpl({required this.soundId});

  @override
  final String soundId;

  @override
  String toString() {
    return 'SoundsControlEvent.onTapMute(soundId: $soundId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapMuteImpl &&
            (identical(other.soundId, soundId) || other.soundId == soundId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soundId);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapMuteImplCopyWith<_$OnTapMuteImpl> get copyWith =>
      __$$OnTapMuteImplCopyWithImpl<_$OnTapMuteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double volume, String soundId) onVolumeChange,
    required TResult Function() onPaused,
    required TResult Function(String soundId) onTapMute,
    required TResult Function(String path, String sID) onPlayed,
  }) {
    return onTapMute(soundId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double volume, String soundId)? onVolumeChange,
    TResult? Function()? onPaused,
    TResult? Function(String soundId)? onTapMute,
    TResult? Function(String path, String sID)? onPlayed,
  }) {
    return onTapMute?.call(soundId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double volume, String soundId)? onVolumeChange,
    TResult Function()? onPaused,
    TResult Function(String soundId)? onTapMute,
    TResult Function(String path, String sID)? onPlayed,
    required TResult orElse(),
  }) {
    if (onTapMute != null) {
      return onTapMute(soundId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnVolumeChange value) onVolumeChange,
    required TResult Function(OnPaused value) onPaused,
    required TResult Function(OnTapMute value) onTapMute,
    required TResult Function(OnPlayed value) onPlayed,
  }) {
    return onTapMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnVolumeChange value)? onVolumeChange,
    TResult? Function(OnPaused value)? onPaused,
    TResult? Function(OnTapMute value)? onTapMute,
    TResult? Function(OnPlayed value)? onPlayed,
  }) {
    return onTapMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnVolumeChange value)? onVolumeChange,
    TResult Function(OnPaused value)? onPaused,
    TResult Function(OnTapMute value)? onTapMute,
    TResult Function(OnPlayed value)? onPlayed,
    required TResult orElse(),
  }) {
    if (onTapMute != null) {
      return onTapMute(this);
    }
    return orElse();
  }
}

abstract class OnTapMute implements SoundsControlEvent {
  const factory OnTapMute({required final String soundId}) = _$OnTapMuteImpl;

  String get soundId;

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTapMuteImplCopyWith<_$OnTapMuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPlayedImplCopyWith<$Res> {
  factory _$$OnPlayedImplCopyWith(
    _$OnPlayedImpl value,
    $Res Function(_$OnPlayedImpl) then,
  ) = __$$OnPlayedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, String sID});
}

/// @nodoc
class __$$OnPlayedImplCopyWithImpl<$Res>
    extends _$SoundsControlEventCopyWithImpl<$Res, _$OnPlayedImpl>
    implements _$$OnPlayedImplCopyWith<$Res> {
  __$$OnPlayedImplCopyWithImpl(
    _$OnPlayedImpl _value,
    $Res Function(_$OnPlayedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null, Object? sID = null}) {
    return _then(
      _$OnPlayedImpl(
        path:
            null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                    as String,
        sID:
            null == sID
                ? _value.sID
                : sID // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnPlayedImpl implements OnPlayed {
  const _$OnPlayedImpl({required this.path, required this.sID});

  @override
  final String path;
  @override
  final String sID;

  @override
  String toString() {
    return 'SoundsControlEvent.onPlayed(path: $path, sID: $sID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPlayedImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.sID, sID) || other.sID == sID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, sID);

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPlayedImplCopyWith<_$OnPlayedImpl> get copyWith =>
      __$$OnPlayedImplCopyWithImpl<_$OnPlayedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double volume, String soundId) onVolumeChange,
    required TResult Function() onPaused,
    required TResult Function(String soundId) onTapMute,
    required TResult Function(String path, String sID) onPlayed,
  }) {
    return onPlayed(path, sID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double volume, String soundId)? onVolumeChange,
    TResult? Function()? onPaused,
    TResult? Function(String soundId)? onTapMute,
    TResult? Function(String path, String sID)? onPlayed,
  }) {
    return onPlayed?.call(path, sID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double volume, String soundId)? onVolumeChange,
    TResult Function()? onPaused,
    TResult Function(String soundId)? onTapMute,
    TResult Function(String path, String sID)? onPlayed,
    required TResult orElse(),
  }) {
    if (onPlayed != null) {
      return onPlayed(path, sID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnVolumeChange value) onVolumeChange,
    required TResult Function(OnPaused value) onPaused,
    required TResult Function(OnTapMute value) onTapMute,
    required TResult Function(OnPlayed value) onPlayed,
  }) {
    return onPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnVolumeChange value)? onVolumeChange,
    TResult? Function(OnPaused value)? onPaused,
    TResult? Function(OnTapMute value)? onTapMute,
    TResult? Function(OnPlayed value)? onPlayed,
  }) {
    return onPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnVolumeChange value)? onVolumeChange,
    TResult Function(OnPaused value)? onPaused,
    TResult Function(OnTapMute value)? onTapMute,
    TResult Function(OnPlayed value)? onPlayed,
    required TResult orElse(),
  }) {
    if (onPlayed != null) {
      return onPlayed(this);
    }
    return orElse();
  }
}

abstract class OnPlayed implements SoundsControlEvent {
  const factory OnPlayed({
    required final String path,
    required final String sID,
  }) = _$OnPlayedImpl;

  String get path;
  String get sID;

  /// Create a copy of SoundsControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPlayedImplCopyWith<_$OnPlayedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SoundsControlState {
  Map<String, double> get volumes => throw _privateConstructorUsedError;
  Map<String, bool> get playingStatus => throw _privateConstructorUsedError;

  /// Create a copy of SoundsControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoundsControlStateCopyWith<SoundsControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundsControlStateCopyWith<$Res> {
  factory $SoundsControlStateCopyWith(
    SoundsControlState value,
    $Res Function(SoundsControlState) then,
  ) = _$SoundsControlStateCopyWithImpl<$Res, SoundsControlState>;
  @useResult
  $Res call({Map<String, double> volumes, Map<String, bool> playingStatus});
}

/// @nodoc
class _$SoundsControlStateCopyWithImpl<$Res, $Val extends SoundsControlState>
    implements $SoundsControlStateCopyWith<$Res> {
  _$SoundsControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoundsControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? volumes = null, Object? playingStatus = null}) {
    return _then(
      _value.copyWith(
            volumes:
                null == volumes
                    ? _value.volumes
                    : volumes // ignore: cast_nullable_to_non_nullable
                        as Map<String, double>,
            playingStatus:
                null == playingStatus
                    ? _value.playingStatus
                    : playingStatus // ignore: cast_nullable_to_non_nullable
                        as Map<String, bool>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SoundsControlStateImplCopyWith<$Res>
    implements $SoundsControlStateCopyWith<$Res> {
  factory _$$SoundsControlStateImplCopyWith(
    _$SoundsControlStateImpl value,
    $Res Function(_$SoundsControlStateImpl) then,
  ) = __$$SoundsControlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, double> volumes, Map<String, bool> playingStatus});
}

/// @nodoc
class __$$SoundsControlStateImplCopyWithImpl<$Res>
    extends _$SoundsControlStateCopyWithImpl<$Res, _$SoundsControlStateImpl>
    implements _$$SoundsControlStateImplCopyWith<$Res> {
  __$$SoundsControlStateImplCopyWithImpl(
    _$SoundsControlStateImpl _value,
    $Res Function(_$SoundsControlStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SoundsControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? volumes = null, Object? playingStatus = null}) {
    return _then(
      _$SoundsControlStateImpl(
        volumes:
            null == volumes
                ? _value._volumes
                : volumes // ignore: cast_nullable_to_non_nullable
                    as Map<String, double>,
        playingStatus:
            null == playingStatus
                ? _value._playingStatus
                : playingStatus // ignore: cast_nullable_to_non_nullable
                    as Map<String, bool>,
      ),
    );
  }
}

/// @nodoc

class _$SoundsControlStateImpl implements _SoundsControlState {
  const _$SoundsControlStateImpl({
    required final Map<String, double> volumes,
    required final Map<String, bool> playingStatus,
  }) : _volumes = volumes,
       _playingStatus = playingStatus;

  final Map<String, double> _volumes;
  @override
  Map<String, double> get volumes {
    if (_volumes is EqualUnmodifiableMapView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_volumes);
  }

  final Map<String, bool> _playingStatus;
  @override
  Map<String, bool> get playingStatus {
    if (_playingStatus is EqualUnmodifiableMapView) return _playingStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playingStatus);
  }

  @override
  String toString() {
    return 'SoundsControlState(volumes: $volumes, playingStatus: $playingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundsControlStateImpl &&
            const DeepCollectionEquality().equals(other._volumes, _volumes) &&
            const DeepCollectionEquality().equals(
              other._playingStatus,
              _playingStatus,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_volumes),
    const DeepCollectionEquality().hash(_playingStatus),
  );

  /// Create a copy of SoundsControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundsControlStateImplCopyWith<_$SoundsControlStateImpl> get copyWith =>
      __$$SoundsControlStateImplCopyWithImpl<_$SoundsControlStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SoundsControlState implements SoundsControlState {
  const factory _SoundsControlState({
    required final Map<String, double> volumes,
    required final Map<String, bool> playingStatus,
  }) = _$SoundsControlStateImpl;

  @override
  Map<String, double> get volumes;
  @override
  Map<String, bool> get playingStatus;

  /// Create a copy of SoundsControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoundsControlStateImplCopyWith<_$SoundsControlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MusicControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicControlEventCopyWith<$Res> {
  factory $MusicControlEventCopyWith(
    MusicControlEvent value,
    $Res Function(MusicControlEvent) then,
  ) = _$MusicControlEventCopyWithImpl<$Res, MusicControlEvent>;
}

/// @nodoc
class _$MusicControlEventCopyWithImpl<$Res, $Val extends MusicControlEvent>
    implements $MusicControlEventCopyWith<$Res> {
  _$MusicControlEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
    _$PlayImpl value,
    $Res Function(_$PlayImpl) then,
  ) = __$$PlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String mood, String animation});
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
    : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? mood = null,
    Object? animation = null,
  }) {
    return _then(
      _$PlayImpl(
        context:
            freezed == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                    as BuildContext,
        mood:
            null == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                    as String,
        animation:
            null == animation
                ? _value.animation
                : animation // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$PlayImpl implements Play {
  const _$PlayImpl({
    required this.context,
    required this.mood,
    required this.animation,
  });

  @override
  final BuildContext context;
  @override
  final String mood;
  @override
  final String animation;

  @override
  String toString() {
    return 'MusicControlEvent.play(context: $context, mood: $mood, animation: $animation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayImpl &&
            const DeepCollectionEquality().equals(other.context, context) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.animation, animation) ||
                other.animation == animation));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(context),
    mood,
    animation,
  );

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      __$$PlayImplCopyWithImpl<_$PlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return play(context, mood, animation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return play?.call(context, mood, animation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(context, mood, animation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class Play implements MusicControlEvent {
  const factory Play({
    required final BuildContext context,
    required final String mood,
    required final String animation,
  }) = _$PlayImpl;

  BuildContext get context;
  String get mood;
  String get animation;

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
    _$LoadImpl value,
    $Res Function(_$LoadImpl) then,
  ) = __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
    : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'MusicControlEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements MusicControlEvent {
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$OnTapPlayImplCopyWith<$Res> {
  factory _$$OnTapPlayImplCopyWith(
    _$OnTapPlayImpl value,
    $Res Function(_$OnTapPlayImpl) then,
  ) = __$$OnTapPlayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnTapPlayImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$OnTapPlayImpl>
    implements _$$OnTapPlayImplCopyWith<$Res> {
  __$$OnTapPlayImplCopyWithImpl(
    _$OnTapPlayImpl _value,
    $Res Function(_$OnTapPlayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnTapPlayImpl implements OnTapPlay {
  const _$OnTapPlayImpl();

  @override
  String toString() {
    return 'MusicControlEvent.onTapPlay()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnTapPlayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return onTapPlay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return onTapPlay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (onTapPlay != null) {
      return onTapPlay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return onTapPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return onTapPlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (onTapPlay != null) {
      return onTapPlay(this);
    }
    return orElse();
  }
}

abstract class OnTapPlay implements MusicControlEvent {
  const factory OnTapPlay() = _$OnTapPlayImpl;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
    _$PauseImpl value,
    $Res Function(_$PauseImpl) then,
  ) = __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
    _$PauseImpl _value,
    $Res Function(_$PauseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseImpl implements Pause {
  const _$PauseImpl();

  @override
  String toString() {
    return 'MusicControlEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class Pause implements MusicControlEvent {
  const factory Pause() = _$PauseImpl;
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
    _$StopImpl value,
    $Res Function(_$StopImpl) then,
  ) = __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
    : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopImpl implements Stop {
  const _$StopImpl();

  @override
  String toString() {
    return 'MusicControlEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class Stop implements MusicControlEvent {
  const factory Stop() = _$StopImpl;
}

/// @nodoc
abstract class _$$StartWaveFormImplCopyWith<$Res> {
  factory _$$StartWaveFormImplCopyWith(
    _$StartWaveFormImpl value,
    $Res Function(_$StartWaveFormImpl) then,
  ) = __$$StartWaveFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartWaveFormImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$StartWaveFormImpl>
    implements _$$StartWaveFormImplCopyWith<$Res> {
  __$$StartWaveFormImplCopyWithImpl(
    _$StartWaveFormImpl _value,
    $Res Function(_$StartWaveFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartWaveFormImpl implements StartWaveForm {
  const _$StartWaveFormImpl();

  @override
  String toString() {
    return 'MusicControlEvent.startWaveForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartWaveFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return startWaveForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return startWaveForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (startWaveForm != null) {
      return startWaveForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return startWaveForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return startWaveForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (startWaveForm != null) {
      return startWaveForm(this);
    }
    return orElse();
  }
}

abstract class StartWaveForm implements MusicControlEvent {
  const factory StartWaveForm() = _$StartWaveFormImpl;
}

/// @nodoc
abstract class _$$StopWaveFormImplCopyWith<$Res> {
  factory _$$StopWaveFormImplCopyWith(
    _$StopWaveFormImpl value,
    $Res Function(_$StopWaveFormImpl) then,
  ) = __$$StopWaveFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWaveFormImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$StopWaveFormImpl>
    implements _$$StopWaveFormImplCopyWith<$Res> {
  __$$StopWaveFormImplCopyWithImpl(
    _$StopWaveFormImpl _value,
    $Res Function(_$StopWaveFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWaveFormImpl implements StopWaveForm {
  const _$StopWaveFormImpl();

  @override
  String toString() {
    return 'MusicControlEvent.stopWaveForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopWaveFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return stopWaveForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return stopWaveForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (stopWaveForm != null) {
      return stopWaveForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return stopWaveForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return stopWaveForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (stopWaveForm != null) {
      return stopWaveForm(this);
    }
    return orElse();
  }
}

abstract class StopWaveForm implements MusicControlEvent {
  const factory StopWaveForm() = _$StopWaveFormImpl;
}

/// @nodoc
abstract class _$$WaveFormImplCopyWith<$Res> {
  factory _$$WaveFormImplCopyWith(
    _$WaveFormImpl value,
    $Res Function(_$WaveFormImpl) then,
  ) = __$$WaveFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaveFormImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$WaveFormImpl>
    implements _$$WaveFormImplCopyWith<$Res> {
  __$$WaveFormImplCopyWithImpl(
    _$WaveFormImpl _value,
    $Res Function(_$WaveFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WaveFormImpl implements WaveForm {
  const _$WaveFormImpl();

  @override
  String toString() {
    return 'MusicControlEvent.waveForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WaveFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return waveForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return waveForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (waveForm != null) {
      return waveForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return waveForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return waveForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (waveForm != null) {
      return waveForm(this);
    }
    return orElse();
  }
}

abstract class WaveForm implements MusicControlEvent {
  const factory WaveForm() = _$WaveFormImpl;
}

/// @nodoc
abstract class _$$IsPlayingOrPausedImplCopyWith<$Res> {
  factory _$$IsPlayingOrPausedImplCopyWith(
    _$IsPlayingOrPausedImpl value,
    $Res Function(_$IsPlayingOrPausedImpl) then,
  ) = __$$IsPlayingOrPausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying, bool isbuffering});
}

/// @nodoc
class __$$IsPlayingOrPausedImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$IsPlayingOrPausedImpl>
    implements _$$IsPlayingOrPausedImplCopyWith<$Res> {
  __$$IsPlayingOrPausedImplCopyWithImpl(
    _$IsPlayingOrPausedImpl _value,
    $Res Function(_$IsPlayingOrPausedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isPlaying = null, Object? isbuffering = null}) {
    return _then(
      _$IsPlayingOrPausedImpl(
        isPlaying:
            null == isPlaying
                ? _value.isPlaying
                : isPlaying // ignore: cast_nullable_to_non_nullable
                    as bool,
        isbuffering:
            null == isbuffering
                ? _value.isbuffering
                : isbuffering // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$IsPlayingOrPausedImpl implements IsPlayingOrPaused {
  const _$IsPlayingOrPausedImpl({
    required this.isPlaying,
    required this.isbuffering,
  });

  @override
  final bool isPlaying;
  @override
  final bool isbuffering;

  @override
  String toString() {
    return 'MusicControlEvent.isPlayingOrPaused(isPlaying: $isPlaying, isbuffering: $isbuffering)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsPlayingOrPausedImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isbuffering, isbuffering) ||
                other.isbuffering == isbuffering));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying, isbuffering);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsPlayingOrPausedImplCopyWith<_$IsPlayingOrPausedImpl> get copyWith =>
      __$$IsPlayingOrPausedImplCopyWithImpl<_$IsPlayingOrPausedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return isPlayingOrPaused(isPlaying, isbuffering);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return isPlayingOrPaused?.call(isPlaying, isbuffering);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (isPlayingOrPaused != null) {
      return isPlayingOrPaused(isPlaying, isbuffering);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return isPlayingOrPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return isPlayingOrPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (isPlayingOrPaused != null) {
      return isPlayingOrPaused(this);
    }
    return orElse();
  }
}

abstract class IsPlayingOrPaused implements MusicControlEvent {
  const factory IsPlayingOrPaused({
    required final bool isPlaying,
    required final bool isbuffering,
  }) = _$IsPlayingOrPausedImpl;

  bool get isPlaying;
  bool get isbuffering;

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsPlayingOrPausedImplCopyWith<_$IsPlayingOrPausedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsMusicChangedImplCopyWith<$Res> {
  factory _$$IsMusicChangedImplCopyWith(
    _$IsMusicChangedImpl value,
    $Res Function(_$IsMusicChangedImpl) then,
  ) = __$$IsMusicChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String animation, String id});
}

/// @nodoc
class __$$IsMusicChangedImplCopyWithImpl<$Res>
    extends _$MusicControlEventCopyWithImpl<$Res, _$IsMusicChangedImpl>
    implements _$$IsMusicChangedImplCopyWith<$Res> {
  __$$IsMusicChangedImplCopyWithImpl(
    _$IsMusicChangedImpl _value,
    $Res Function(_$IsMusicChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? animation = null, Object? id = null}) {
    return _then(
      _$IsMusicChangedImpl(
        animation:
            null == animation
                ? _value.animation
                : animation // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$IsMusicChangedImpl implements IsMusicChanged {
  const _$IsMusicChangedImpl({required this.animation, required this.id});

  @override
  final String animation;
  @override
  final String id;

  @override
  String toString() {
    return 'MusicControlEvent.isMusicChanged(animation: $animation, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsMusicChangedImpl &&
            (identical(other.animation, animation) ||
                other.animation == animation) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animation, id);

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsMusicChangedImplCopyWith<_$IsMusicChangedImpl> get copyWith =>
      __$$IsMusicChangedImplCopyWithImpl<_$IsMusicChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      BuildContext context,
      String mood,
      String animation,
    )
    play,
    required TResult Function() load,
    required TResult Function() onTapPlay,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() startWaveForm,
    required TResult Function() stopWaveForm,
    required TResult Function() waveForm,
    required TResult Function(bool isPlaying, bool isbuffering)
    isPlayingOrPaused,
    required TResult Function(String animation, String id) isMusicChanged,
  }) {
    return isMusicChanged(animation, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String mood, String animation)?
    play,
    TResult? Function()? load,
    TResult? Function()? onTapPlay,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function()? startWaveForm,
    TResult? Function()? stopWaveForm,
    TResult? Function()? waveForm,
    TResult? Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult? Function(String animation, String id)? isMusicChanged,
  }) {
    return isMusicChanged?.call(animation, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String mood, String animation)? play,
    TResult Function()? load,
    TResult Function()? onTapPlay,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? startWaveForm,
    TResult Function()? stopWaveForm,
    TResult Function()? waveForm,
    TResult Function(bool isPlaying, bool isbuffering)? isPlayingOrPaused,
    TResult Function(String animation, String id)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (isMusicChanged != null) {
      return isMusicChanged(animation, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Play value) play,
    required TResult Function(Load value) load,
    required TResult Function(OnTapPlay value) onTapPlay,
    required TResult Function(Pause value) pause,
    required TResult Function(Stop value) stop,
    required TResult Function(StartWaveForm value) startWaveForm,
    required TResult Function(StopWaveForm value) stopWaveForm,
    required TResult Function(WaveForm value) waveForm,
    required TResult Function(IsPlayingOrPaused value) isPlayingOrPaused,
    required TResult Function(IsMusicChanged value) isMusicChanged,
  }) {
    return isMusicChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Play value)? play,
    TResult? Function(Load value)? load,
    TResult? Function(OnTapPlay value)? onTapPlay,
    TResult? Function(Pause value)? pause,
    TResult? Function(Stop value)? stop,
    TResult? Function(StartWaveForm value)? startWaveForm,
    TResult? Function(StopWaveForm value)? stopWaveForm,
    TResult? Function(WaveForm value)? waveForm,
    TResult? Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult? Function(IsMusicChanged value)? isMusicChanged,
  }) {
    return isMusicChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Play value)? play,
    TResult Function(Load value)? load,
    TResult Function(OnTapPlay value)? onTapPlay,
    TResult Function(Pause value)? pause,
    TResult Function(Stop value)? stop,
    TResult Function(StartWaveForm value)? startWaveForm,
    TResult Function(StopWaveForm value)? stopWaveForm,
    TResult Function(WaveForm value)? waveForm,
    TResult Function(IsPlayingOrPaused value)? isPlayingOrPaused,
    TResult Function(IsMusicChanged value)? isMusicChanged,
    required TResult orElse(),
  }) {
    if (isMusicChanged != null) {
      return isMusicChanged(this);
    }
    return orElse();
  }
}

abstract class IsMusicChanged implements MusicControlEvent {
  const factory IsMusicChanged({
    required final String animation,
    required final String id,
  }) = _$IsMusicChangedImpl;

  String get animation;
  String get id;

  /// Create a copy of MusicControlEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsMusicChangedImplCopyWith<_$IsMusicChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MusicControlState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get animation => throw _privateConstructorUsedError;
  bool get isPlay => throw _privateConstructorUsedError;
  bool get onTapPlay => throw _privateConstructorUsedError;
  bool get isPause => throw _privateConstructorUsedError;
  bool get isStoped => throw _privateConstructorUsedError;
  List<double> get heights => throw _privateConstructorUsedError;

  /// Create a copy of MusicControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MusicControlStateCopyWith<MusicControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicControlStateCopyWith<$Res> {
  factory $MusicControlStateCopyWith(
    MusicControlState value,
    $Res Function(MusicControlState) then,
  ) = _$MusicControlStateCopyWithImpl<$Res, MusicControlState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isError,
    String animation,
    bool isPlay,
    bool onTapPlay,
    bool isPause,
    bool isStoped,
    List<double> heights,
  });
}

/// @nodoc
class _$MusicControlStateCopyWithImpl<$Res, $Val extends MusicControlState>
    implements $MusicControlStateCopyWith<$Res> {
  _$MusicControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MusicControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? animation = null,
    Object? isPlay = null,
    Object? onTapPlay = null,
    Object? isPause = null,
    Object? isStoped = null,
    Object? heights = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isError:
                null == isError
                    ? _value.isError
                    : isError // ignore: cast_nullable_to_non_nullable
                        as bool,
            animation:
                null == animation
                    ? _value.animation
                    : animation // ignore: cast_nullable_to_non_nullable
                        as String,
            isPlay:
                null == isPlay
                    ? _value.isPlay
                    : isPlay // ignore: cast_nullable_to_non_nullable
                        as bool,
            onTapPlay:
                null == onTapPlay
                    ? _value.onTapPlay
                    : onTapPlay // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPause:
                null == isPause
                    ? _value.isPause
                    : isPause // ignore: cast_nullable_to_non_nullable
                        as bool,
            isStoped:
                null == isStoped
                    ? _value.isStoped
                    : isStoped // ignore: cast_nullable_to_non_nullable
                        as bool,
            heights:
                null == heights
                    ? _value.heights
                    : heights // ignore: cast_nullable_to_non_nullable
                        as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MusicControlStateImplCopyWith<$Res>
    implements $MusicControlStateCopyWith<$Res> {
  factory _$$MusicControlStateImplCopyWith(
    _$MusicControlStateImpl value,
    $Res Function(_$MusicControlStateImpl) then,
  ) = __$$MusicControlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isError,
    String animation,
    bool isPlay,
    bool onTapPlay,
    bool isPause,
    bool isStoped,
    List<double> heights,
  });
}

/// @nodoc
class __$$MusicControlStateImplCopyWithImpl<$Res>
    extends _$MusicControlStateCopyWithImpl<$Res, _$MusicControlStateImpl>
    implements _$$MusicControlStateImplCopyWith<$Res> {
  __$$MusicControlStateImplCopyWithImpl(
    _$MusicControlStateImpl _value,
    $Res Function(_$MusicControlStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MusicControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? animation = null,
    Object? isPlay = null,
    Object? onTapPlay = null,
    Object? isPause = null,
    Object? isStoped = null,
    Object? heights = null,
  }) {
    return _then(
      _$MusicControlStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isError:
            null == isError
                ? _value.isError
                : isError // ignore: cast_nullable_to_non_nullable
                    as bool,
        animation:
            null == animation
                ? _value.animation
                : animation // ignore: cast_nullable_to_non_nullable
                    as String,
        isPlay:
            null == isPlay
                ? _value.isPlay
                : isPlay // ignore: cast_nullable_to_non_nullable
                    as bool,
        onTapPlay:
            null == onTapPlay
                ? _value.onTapPlay
                : onTapPlay // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPause:
            null == isPause
                ? _value.isPause
                : isPause // ignore: cast_nullable_to_non_nullable
                    as bool,
        isStoped:
            null == isStoped
                ? _value.isStoped
                : isStoped // ignore: cast_nullable_to_non_nullable
                    as bool,
        heights:
            null == heights
                ? _value._heights
                : heights // ignore: cast_nullable_to_non_nullable
                    as List<double>,
      ),
    );
  }
}

/// @nodoc

class _$MusicControlStateImpl implements _MusicControlState {
  const _$MusicControlStateImpl({
    required this.isLoading,
    required this.isError,
    required this.animation,
    required this.isPlay,
    required this.onTapPlay,
    required this.isPause,
    required this.isStoped,
    required final List<double> heights,
  }) : _heights = heights;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String animation;
  @override
  final bool isPlay;
  @override
  final bool onTapPlay;
  @override
  final bool isPause;
  @override
  final bool isStoped;
  final List<double> _heights;
  @override
  List<double> get heights {
    if (_heights is EqualUnmodifiableListView) return _heights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heights);
  }

  @override
  String toString() {
    return 'MusicControlState(isLoading: $isLoading, isError: $isError, animation: $animation, isPlay: $isPlay, onTapPlay: $onTapPlay, isPause: $isPause, isStoped: $isStoped, heights: $heights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicControlStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.animation, animation) ||
                other.animation == animation) &&
            (identical(other.isPlay, isPlay) || other.isPlay == isPlay) &&
            (identical(other.onTapPlay, onTapPlay) ||
                other.onTapPlay == onTapPlay) &&
            (identical(other.isPause, isPause) || other.isPause == isPause) &&
            (identical(other.isStoped, isStoped) ||
                other.isStoped == isStoped) &&
            const DeepCollectionEquality().equals(other._heights, _heights));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isError,
    animation,
    isPlay,
    onTapPlay,
    isPause,
    isStoped,
    const DeepCollectionEquality().hash(_heights),
  );

  /// Create a copy of MusicControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicControlStateImplCopyWith<_$MusicControlStateImpl> get copyWith =>
      __$$MusicControlStateImplCopyWithImpl<_$MusicControlStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MusicControlState implements MusicControlState {
  const factory _MusicControlState({
    required final bool isLoading,
    required final bool isError,
    required final String animation,
    required final bool isPlay,
    required final bool onTapPlay,
    required final bool isPause,
    required final bool isStoped,
    required final List<double> heights,
  }) = _$MusicControlStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get animation;
  @override
  bool get isPlay;
  @override
  bool get onTapPlay;
  @override
  bool get isPause;
  @override
  bool get isStoped;
  @override
  List<double> get heights;

  /// Create a copy of MusicControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MusicControlStateImplCopyWith<_$MusicControlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

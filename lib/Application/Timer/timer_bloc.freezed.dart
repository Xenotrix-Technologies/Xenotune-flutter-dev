// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hour) hour,
    required TResult Function(int minute) minute,
    required TResult Function(int hour, int minute) set,
    required TResult Function() cancel,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hour)? hour,
    TResult? Function(int minute)? minute,
    TResult? Function(int hour, int minute)? set,
    TResult? Function()? cancel,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hour)? hour,
    TResult Function(int minute)? minute,
    TResult Function(int hour, int minute)? set,
    TResult Function()? cancel,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Hour value) hour,
    required TResult Function(Minute value) minute,
    required TResult Function(Set value) set,
    required TResult Function(Cancel value) cancel,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Hour value)? hour,
    TResult? Function(Minute value)? minute,
    TResult? Function(Set value)? set,
    TResult? Function(Cancel value)? cancel,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Hour value)? hour,
    TResult Function(Minute value)? minute,
    TResult Function(Set value)? set,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
    TimerEvent value,
    $Res Function(TimerEvent) then,
  ) = _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HourImplCopyWith<$Res> {
  factory _$$HourImplCopyWith(
    _$HourImpl value,
    $Res Function(_$HourImpl) then,
  ) = __$$HourImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int hour});
}

/// @nodoc
class __$$HourImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$HourImpl>
    implements _$$HourImplCopyWith<$Res> {
  __$$HourImplCopyWithImpl(_$HourImpl _value, $Res Function(_$HourImpl) _then)
    : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hour = null}) {
    return _then(
      _$HourImpl(
        hour:
            null == hour
                ? _value.hour
                : hour // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$HourImpl implements Hour {
  const _$HourImpl({required this.hour});

  @override
  final int hour;

  @override
  String toString() {
    return 'TimerEvent.hour(hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourImpl &&
            (identical(other.hour, hour) || other.hour == hour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourImplCopyWith<_$HourImpl> get copyWith =>
      __$$HourImplCopyWithImpl<_$HourImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hour) hour,
    required TResult Function(int minute) minute,
    required TResult Function(int hour, int minute) set,
    required TResult Function() cancel,
  }) {
    return hour(this.hour);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hour)? hour,
    TResult? Function(int minute)? minute,
    TResult? Function(int hour, int minute)? set,
    TResult? Function()? cancel,
  }) {
    return hour?.call(this.hour);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hour)? hour,
    TResult Function(int minute)? minute,
    TResult Function(int hour, int minute)? set,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(this.hour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Hour value) hour,
    required TResult Function(Minute value) minute,
    required TResult Function(Set value) set,
    required TResult Function(Cancel value) cancel,
  }) {
    return hour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Hour value)? hour,
    TResult? Function(Minute value)? minute,
    TResult? Function(Set value)? set,
    TResult? Function(Cancel value)? cancel,
  }) {
    return hour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Hour value)? hour,
    TResult Function(Minute value)? minute,
    TResult Function(Set value)? set,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(this);
    }
    return orElse();
  }
}

abstract class Hour implements TimerEvent {
  const factory Hour({required final int hour}) = _$HourImpl;

  int get hour;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourImplCopyWith<_$HourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinuteImplCopyWith<$Res> {
  factory _$$MinuteImplCopyWith(
    _$MinuteImpl value,
    $Res Function(_$MinuteImpl) then,
  ) = __$$MinuteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int minute});
}

/// @nodoc
class __$$MinuteImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$MinuteImpl>
    implements _$$MinuteImplCopyWith<$Res> {
  __$$MinuteImplCopyWithImpl(
    _$MinuteImpl _value,
    $Res Function(_$MinuteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minute = null}) {
    return _then(
      _$MinuteImpl(
        minute:
            null == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$MinuteImpl implements Minute {
  const _$MinuteImpl({required this.minute});

  @override
  final int minute;

  @override
  String toString() {
    return 'TimerEvent.minute(minute: $minute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinuteImpl &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minute);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinuteImplCopyWith<_$MinuteImpl> get copyWith =>
      __$$MinuteImplCopyWithImpl<_$MinuteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hour) hour,
    required TResult Function(int minute) minute,
    required TResult Function(int hour, int minute) set,
    required TResult Function() cancel,
  }) {
    return minute(this.minute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hour)? hour,
    TResult? Function(int minute)? minute,
    TResult? Function(int hour, int minute)? set,
    TResult? Function()? cancel,
  }) {
    return minute?.call(this.minute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hour)? hour,
    TResult Function(int minute)? minute,
    TResult Function(int hour, int minute)? set,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (minute != null) {
      return minute(this.minute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Hour value) hour,
    required TResult Function(Minute value) minute,
    required TResult Function(Set value) set,
    required TResult Function(Cancel value) cancel,
  }) {
    return minute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Hour value)? hour,
    TResult? Function(Minute value)? minute,
    TResult? Function(Set value)? set,
    TResult? Function(Cancel value)? cancel,
  }) {
    return minute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Hour value)? hour,
    TResult Function(Minute value)? minute,
    TResult Function(Set value)? set,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (minute != null) {
      return minute(this);
    }
    return orElse();
  }
}

abstract class Minute implements TimerEvent {
  const factory Minute({required final int minute}) = _$MinuteImpl;

  int get minute;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinuteImplCopyWith<_$MinuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
    : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hour = null, Object? minute = null}) {
    return _then(
      _$SetImpl(
        hour:
            null == hour
                ? _value.hour
                : hour // ignore: cast_nullable_to_non_nullable
                    as int,
        minute:
            null == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$SetImpl implements Set {
  const _$SetImpl({required this.hour, required this.minute});

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'TimerEvent.set(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, minute);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hour) hour,
    required TResult Function(int minute) minute,
    required TResult Function(int hour, int minute) set,
    required TResult Function() cancel,
  }) {
    return set(this.hour, this.minute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hour)? hour,
    TResult? Function(int minute)? minute,
    TResult? Function(int hour, int minute)? set,
    TResult? Function()? cancel,
  }) {
    return set?.call(this.hour, this.minute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hour)? hour,
    TResult Function(int minute)? minute,
    TResult Function(int hour, int minute)? set,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this.hour, this.minute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Hour value) hour,
    required TResult Function(Minute value) minute,
    required TResult Function(Set value) set,
    required TResult Function(Cancel value) cancel,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Hour value)? hour,
    TResult? Function(Minute value)? minute,
    TResult? Function(Set value)? set,
    TResult? Function(Cancel value)? cancel,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Hour value)? hour,
    TResult Function(Minute value)? minute,
    TResult Function(Set value)? set,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class Set implements TimerEvent {
  const factory Set({required final int hour, required final int minute}) =
      _$SetImpl;

  int get hour;
  int get minute;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelImplCopyWith<$Res> {
  factory _$$CancelImplCopyWith(
    _$CancelImpl value,
    $Res Function(_$CancelImpl) then,
  ) = __$$CancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$CancelImpl>
    implements _$$CancelImplCopyWith<$Res> {
  __$$CancelImplCopyWithImpl(
    _$CancelImpl _value,
    $Res Function(_$CancelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelImpl implements Cancel {
  const _$CancelImpl();

  @override
  String toString() {
    return 'TimerEvent.cancel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hour) hour,
    required TResult Function(int minute) minute,
    required TResult Function(int hour, int minute) set,
    required TResult Function() cancel,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hour)? hour,
    TResult? Function(int minute)? minute,
    TResult? Function(int hour, int minute)? set,
    TResult? Function()? cancel,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hour)? hour,
    TResult Function(int minute)? minute,
    TResult Function(int hour, int minute)? set,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Hour value) hour,
    required TResult Function(Minute value) minute,
    required TResult Function(Set value) set,
    required TResult Function(Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Hour value)? hour,
    TResult? Function(Minute value)? minute,
    TResult? Function(Set value)? set,
    TResult? Function(Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Hour value)? hour,
    TResult Function(Minute value)? minute,
    TResult Function(Set value)? set,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class Cancel implements TimerEvent {
  const factory Cancel() = _$CancelImpl;
}

/// @nodoc
mixin _$TimerState {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get settedHour => throw _privateConstructorUsedError;
  int get settedMinute => throw _privateConstructorUsedError;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
    TimerState value,
    $Res Function(TimerState) then,
  ) = _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({int hour, int minute, int settedHour, int settedMinute});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? settedHour = null,
    Object? settedMinute = null,
  }) {
    return _then(
      _value.copyWith(
            hour:
                null == hour
                    ? _value.hour
                    : hour // ignore: cast_nullable_to_non_nullable
                        as int,
            minute:
                null == minute
                    ? _value.minute
                    : minute // ignore: cast_nullable_to_non_nullable
                        as int,
            settedHour:
                null == settedHour
                    ? _value.settedHour
                    : settedHour // ignore: cast_nullable_to_non_nullable
                        as int,
            settedMinute:
                null == settedMinute
                    ? _value.settedMinute
                    : settedMinute // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimerStateImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerStateImplCopyWith(
    _$TimerStateImpl value,
    $Res Function(_$TimerStateImpl) then,
  ) = __$$TimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute, int settedHour, int settedMinute});
}

/// @nodoc
class __$$TimerStateImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateImpl>
    implements _$$TimerStateImplCopyWith<$Res> {
  __$$TimerStateImplCopyWithImpl(
    _$TimerStateImpl _value,
    $Res Function(_$TimerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? settedHour = null,
    Object? settedMinute = null,
  }) {
    return _then(
      _$TimerStateImpl(
        hour:
            null == hour
                ? _value.hour
                : hour // ignore: cast_nullable_to_non_nullable
                    as int,
        minute:
            null == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                    as int,
        settedHour:
            null == settedHour
                ? _value.settedHour
                : settedHour // ignore: cast_nullable_to_non_nullable
                    as int,
        settedMinute:
            null == settedMinute
                ? _value.settedMinute
                : settedMinute // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$TimerStateImpl implements _TimerState {
  const _$TimerStateImpl({
    required this.hour,
    required this.minute,
    required this.settedHour,
    required this.settedMinute,
  });

  @override
  final int hour;
  @override
  final int minute;
  @override
  final int settedHour;
  @override
  final int settedMinute;

  @override
  String toString() {
    return 'TimerState(hour: $hour, minute: $minute, settedHour: $settedHour, settedMinute: $settedMinute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.settedHour, settedHour) ||
                other.settedHour == settedHour) &&
            (identical(other.settedMinute, settedMinute) ||
                other.settedMinute == settedMinute));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hour, minute, settedHour, settedMinute);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStateImplCopyWith<_$TimerStateImpl> get copyWith =>
      __$$TimerStateImplCopyWithImpl<_$TimerStateImpl>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState({
    required final int hour,
    required final int minute,
    required final int settedHour,
    required final int settedMinute,
  }) = _$TimerStateImpl;

  @override
  int get hour;
  @override
  int get minute;
  @override
  int get settedHour;
  @override
  int get settedMinute;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerStateImplCopyWith<_$TimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

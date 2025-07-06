// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$InternetCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) check,
    required TResult Function() ifConnected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? check,
    TResult? Function()? ifConnected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? check,
    TResult Function()? ifConnected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(IfConnected value) ifConnected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(IfConnected value)? ifConnected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(IfConnected value)? ifConnected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckEventCopyWith<$Res> {
  factory $InternetCheckEventCopyWith(
    InternetCheckEvent value,
    $Res Function(InternetCheckEvent) then,
  ) = _$InternetCheckEventCopyWithImpl<$Res, InternetCheckEvent>;
}

/// @nodoc
class _$InternetCheckEventCopyWithImpl<$Res, $Val extends InternetCheckEvent>
    implements $InternetCheckEventCopyWith<$Res> {
  _$InternetCheckEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetCheckEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
    _$CheckImpl value,
    $Res Function(_$CheckImpl) then,
  ) = __$$CheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$InternetCheckEventCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
    _$CheckImpl _value,
    $Res Function(_$CheckImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InternetCheckEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? context = null}) {
    return _then(
      _$CheckImpl(
        context:
            null == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                    as BuildContext,
      ),
    );
  }
}

/// @nodoc

class _$CheckImpl implements Check {
  const _$CheckImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'InternetCheckEvent.check(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of InternetCheckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      __$$CheckImplCopyWithImpl<_$CheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) check,
    required TResult Function() ifConnected,
  }) {
    return check(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? check,
    TResult? Function()? ifConnected,
  }) {
    return check?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? check,
    TResult Function()? ifConnected,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(IfConnected value) ifConnected,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(IfConnected value)? ifConnected,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(IfConnected value)? ifConnected,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class Check implements InternetCheckEvent {
  const factory Check({required final BuildContext context}) = _$CheckImpl;

  BuildContext get context;

  /// Create a copy of InternetCheckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IfConnectedImplCopyWith<$Res> {
  factory _$$IfConnectedImplCopyWith(
    _$IfConnectedImpl value,
    $Res Function(_$IfConnectedImpl) then,
  ) = __$$IfConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IfConnectedImplCopyWithImpl<$Res>
    extends _$InternetCheckEventCopyWithImpl<$Res, _$IfConnectedImpl>
    implements _$$IfConnectedImplCopyWith<$Res> {
  __$$IfConnectedImplCopyWithImpl(
    _$IfConnectedImpl _value,
    $Res Function(_$IfConnectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InternetCheckEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IfConnectedImpl implements IfConnected {
  const _$IfConnectedImpl();

  @override
  String toString() {
    return 'InternetCheckEvent.ifConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IfConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) check,
    required TResult Function() ifConnected,
  }) {
    return ifConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? check,
    TResult? Function()? ifConnected,
  }) {
    return ifConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? check,
    TResult Function()? ifConnected,
    required TResult orElse(),
  }) {
    if (ifConnected != null) {
      return ifConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(IfConnected value) ifConnected,
  }) {
    return ifConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(IfConnected value)? ifConnected,
  }) {
    return ifConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(IfConnected value)? ifConnected,
    required TResult orElse(),
  }) {
    if (ifConnected != null) {
      return ifConnected(this);
    }
    return orElse();
  }
}

abstract class IfConnected implements InternetCheckEvent {
  const factory IfConnected() = _$IfConnectedImpl;
}

/// @nodoc
mixin _$InternetCheckState {
  bool get isTrue => throw _privateConstructorUsedError;

  /// Create a copy of InternetCheckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetCheckStateCopyWith<InternetCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckStateCopyWith<$Res> {
  factory $InternetCheckStateCopyWith(
    InternetCheckState value,
    $Res Function(InternetCheckState) then,
  ) = _$InternetCheckStateCopyWithImpl<$Res, InternetCheckState>;
  @useResult
  $Res call({bool isTrue});
}

/// @nodoc
class _$InternetCheckStateCopyWithImpl<$Res, $Val extends InternetCheckState>
    implements $InternetCheckStateCopyWith<$Res> {
  _$InternetCheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetCheckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isTrue = null}) {
    return _then(
      _value.copyWith(
            isTrue:
                null == isTrue
                    ? _value.isTrue
                    : isTrue // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InternetCheckStateImplCopyWith<$Res>
    implements $InternetCheckStateCopyWith<$Res> {
  factory _$$InternetCheckStateImplCopyWith(
    _$InternetCheckStateImpl value,
    $Res Function(_$InternetCheckStateImpl) then,
  ) = __$$InternetCheckStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTrue});
}

/// @nodoc
class __$$InternetCheckStateImplCopyWithImpl<$Res>
    extends _$InternetCheckStateCopyWithImpl<$Res, _$InternetCheckStateImpl>
    implements _$$InternetCheckStateImplCopyWith<$Res> {
  __$$InternetCheckStateImplCopyWithImpl(
    _$InternetCheckStateImpl _value,
    $Res Function(_$InternetCheckStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InternetCheckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isTrue = null}) {
    return _then(
      _$InternetCheckStateImpl(
        isTrue:
            null == isTrue
                ? _value.isTrue
                : isTrue // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$InternetCheckStateImpl implements _InternetCheckState {
  const _$InternetCheckStateImpl({required this.isTrue});

  @override
  final bool isTrue;

  @override
  String toString() {
    return 'InternetCheckState(isTrue: $isTrue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetCheckStateImpl &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTrue);

  /// Create a copy of InternetCheckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetCheckStateImplCopyWith<_$InternetCheckStateImpl> get copyWith =>
      __$$InternetCheckStateImplCopyWithImpl<_$InternetCheckStateImpl>(
        this,
        _$identity,
      );
}

abstract class _InternetCheckState implements InternetCheckState {
  const factory _InternetCheckState({required final bool isTrue}) =
      _$InternetCheckStateImpl;

  @override
  bool get isTrue;

  /// Create a copy of InternetCheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternetCheckStateImplCopyWith<_$InternetCheckStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscriptionEvent,
    required TResult Function(Package package) onPurchasePackage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubscriptionEvent,
    TResult? Function(Package package)? onPurchasePackage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscriptionEvent,
    TResult Function(Package package)? onPurchasePackage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSubscriptionEvent value) onSubscriptionEvent,
    required TResult Function(OnPurchasePackage value) onPurchasePackage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult? Function(OnPurchasePackage value)? onPurchasePackage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult Function(OnPurchasePackage value)? onPurchasePackage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
    SubscriptionEvent value,
    $Res Function(SubscriptionEvent) then,
  ) = _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnSubscriptionEventImplCopyWith<$Res> {
  factory _$$OnSubscriptionEventImplCopyWith(
    _$OnSubscriptionEventImpl value,
    $Res Function(_$OnSubscriptionEventImpl) then,
  ) = __$$OnSubscriptionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSubscriptionEventImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$OnSubscriptionEventImpl>
    implements _$$OnSubscriptionEventImplCopyWith<$Res> {
  __$$OnSubscriptionEventImplCopyWithImpl(
    _$OnSubscriptionEventImpl _value,
    $Res Function(_$OnSubscriptionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSubscriptionEventImpl implements OnSubscriptionEvent {
  const _$OnSubscriptionEventImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.onSubscriptionEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubscriptionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscriptionEvent,
    required TResult Function(Package package) onPurchasePackage,
  }) {
    return onSubscriptionEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubscriptionEvent,
    TResult? Function(Package package)? onPurchasePackage,
  }) {
    return onSubscriptionEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscriptionEvent,
    TResult Function(Package package)? onPurchasePackage,
    required TResult orElse(),
  }) {
    if (onSubscriptionEvent != null) {
      return onSubscriptionEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSubscriptionEvent value) onSubscriptionEvent,
    required TResult Function(OnPurchasePackage value) onPurchasePackage,
  }) {
    return onSubscriptionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult? Function(OnPurchasePackage value)? onPurchasePackage,
  }) {
    return onSubscriptionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult Function(OnPurchasePackage value)? onPurchasePackage,
    required TResult orElse(),
  }) {
    if (onSubscriptionEvent != null) {
      return onSubscriptionEvent(this);
    }
    return orElse();
  }
}

abstract class OnSubscriptionEvent implements SubscriptionEvent {
  const factory OnSubscriptionEvent() = _$OnSubscriptionEventImpl;
}

/// @nodoc
abstract class _$$OnPurchasePackageImplCopyWith<$Res> {
  factory _$$OnPurchasePackageImplCopyWith(
    _$OnPurchasePackageImpl value,
    $Res Function(_$OnPurchasePackageImpl) then,
  ) = __$$OnPurchasePackageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Package package});

  $PackageCopyWith<$Res> get package;
}

/// @nodoc
class __$$OnPurchasePackageImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$OnPurchasePackageImpl>
    implements _$$OnPurchasePackageImplCopyWith<$Res> {
  __$$OnPurchasePackageImplCopyWithImpl(
    _$OnPurchasePackageImpl _value,
    $Res Function(_$OnPurchasePackageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? package = null}) {
    return _then(
      _$OnPurchasePackageImpl(
        package:
            null == package
                ? _value.package
                : package // ignore: cast_nullable_to_non_nullable
                    as Package,
      ),
    );
  }

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res> get package {
    return $PackageCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc

class _$OnPurchasePackageImpl implements OnPurchasePackage {
  const _$OnPurchasePackageImpl({required this.package});

  @override
  final Package package;

  @override
  String toString() {
    return 'SubscriptionEvent.onPurchasePackage(package: $package)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPurchasePackageImpl &&
            (identical(other.package, package) || other.package == package));
  }

  @override
  int get hashCode => Object.hash(runtimeType, package);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPurchasePackageImplCopyWith<_$OnPurchasePackageImpl> get copyWith =>
      __$$OnPurchasePackageImplCopyWithImpl<_$OnPurchasePackageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscriptionEvent,
    required TResult Function(Package package) onPurchasePackage,
  }) {
    return onPurchasePackage(package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubscriptionEvent,
    TResult? Function(Package package)? onPurchasePackage,
  }) {
    return onPurchasePackage?.call(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscriptionEvent,
    TResult Function(Package package)? onPurchasePackage,
    required TResult orElse(),
  }) {
    if (onPurchasePackage != null) {
      return onPurchasePackage(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSubscriptionEvent value) onSubscriptionEvent,
    required TResult Function(OnPurchasePackage value) onPurchasePackage,
  }) {
    return onPurchasePackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult? Function(OnPurchasePackage value)? onPurchasePackage,
  }) {
    return onPurchasePackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSubscriptionEvent value)? onSubscriptionEvent,
    TResult Function(OnPurchasePackage value)? onPurchasePackage,
    required TResult orElse(),
  }) {
    if (onPurchasePackage != null) {
      return onPurchasePackage(this);
    }
    return orElse();
  }
}

abstract class OnPurchasePackage implements SubscriptionEvent {
  const factory OnPurchasePackage({required final Package package}) =
      _$OnPurchasePackageImpl;

  Package get package;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPurchasePackageImplCopyWith<_$OnPurchasePackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionState {
  List<Offering> get offerings => throw _privateConstructorUsedError;
  bool get purchasedSucces => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
    SubscriptionState value,
    $Res Function(SubscriptionState) then,
  ) = _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call({List<Offering> offerings, bool purchasedSucces});
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offerings = null, Object? purchasedSucces = null}) {
    return _then(
      _value.copyWith(
            offerings:
                null == offerings
                    ? _value.offerings
                    : offerings // ignore: cast_nullable_to_non_nullable
                        as List<Offering>,
            purchasedSucces:
                null == purchasedSucces
                    ? _value.purchasedSucces
                    : purchasedSucces // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionStateImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$SubscriptionStateImplCopyWith(
    _$SubscriptionStateImpl value,
    $Res Function(_$SubscriptionStateImpl) then,
  ) = __$$SubscriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offering> offerings, bool purchasedSucces});
}

/// @nodoc
class __$$SubscriptionStateImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SubscriptionStateImpl>
    implements _$$SubscriptionStateImplCopyWith<$Res> {
  __$$SubscriptionStateImplCopyWithImpl(
    _$SubscriptionStateImpl _value,
    $Res Function(_$SubscriptionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offerings = null, Object? purchasedSucces = null}) {
    return _then(
      _$SubscriptionStateImpl(
        offerings:
            null == offerings
                ? _value._offerings
                : offerings // ignore: cast_nullable_to_non_nullable
                    as List<Offering>,
        purchasedSucces:
            null == purchasedSucces
                ? _value.purchasedSucces
                : purchasedSucces // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SubscriptionStateImpl implements _SubscriptionState {
  const _$SubscriptionStateImpl({
    required final List<Offering> offerings,
    required this.purchasedSucces,
  }) : _offerings = offerings;

  final List<Offering> _offerings;
  @override
  List<Offering> get offerings {
    if (_offerings is EqualUnmodifiableListView) return _offerings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offerings);
  }

  @override
  final bool purchasedSucces;

  @override
  String toString() {
    return 'SubscriptionState(offerings: $offerings, purchasedSucces: $purchasedSucces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateImpl &&
            const DeepCollectionEquality().equals(
              other._offerings,
              _offerings,
            ) &&
            (identical(other.purchasedSucces, purchasedSucces) ||
                other.purchasedSucces == purchasedSucces));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_offerings),
    purchasedSucces,
  );

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      __$$SubscriptionStateImplCopyWithImpl<_$SubscriptionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState({
    required final List<Offering> offerings,
    required final bool purchasedSucces,
  }) = _$SubscriptionStateImpl;

  @override
  List<Offering> get offerings;
  @override
  bool get purchasedSucces;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

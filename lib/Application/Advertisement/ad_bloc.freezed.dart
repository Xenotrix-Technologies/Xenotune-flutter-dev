// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBannerAd,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBannerAd,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBannerAd,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBannerAd value) loadBannerAd,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBannerAd value)? loadBannerAd,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBannerAd value)? loadBannerAd,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventCopyWith<$Res> {
  factory $AdEventCopyWith(AdEvent value, $Res Function(AdEvent) then) =
      _$AdEventCopyWithImpl<$Res, AdEvent>;
}

/// @nodoc
class _$AdEventCopyWithImpl<$Res, $Val extends AdEvent>
    implements $AdEventCopyWith<$Res> {
  _$AdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadBannerAdImplCopyWith<$Res> {
  factory _$$LoadBannerAdImplCopyWith(
    _$LoadBannerAdImpl value,
    $Res Function(_$LoadBannerAdImpl) then,
  ) = __$$LoadBannerAdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBannerAdImplCopyWithImpl<$Res>
    extends _$AdEventCopyWithImpl<$Res, _$LoadBannerAdImpl>
    implements _$$LoadBannerAdImplCopyWith<$Res> {
  __$$LoadBannerAdImplCopyWithImpl(
    _$LoadBannerAdImpl _value,
    $Res Function(_$LoadBannerAdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadBannerAdImpl implements LoadBannerAd {
  const _$LoadBannerAdImpl();

  @override
  String toString() {
    return 'AdEvent.loadBannerAd()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBannerAdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBannerAd,
  }) {
    return loadBannerAd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBannerAd,
  }) {
    return loadBannerAd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBannerAd,
    required TResult orElse(),
  }) {
    if (loadBannerAd != null) {
      return loadBannerAd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBannerAd value) loadBannerAd,
  }) {
    return loadBannerAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBannerAd value)? loadBannerAd,
  }) {
    return loadBannerAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBannerAd value)? loadBannerAd,
    required TResult orElse(),
  }) {
    if (loadBannerAd != null) {
      return loadBannerAd(this);
    }
    return orElse();
  }
}

abstract class LoadBannerAd implements AdEvent {
  const factory LoadBannerAd() = _$LoadBannerAdImpl;
}

/// @nodoc
mixin _$AdState {
  BannerAd? get ad => throw _privateConstructorUsedError;

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdStateCopyWith<AdState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res, AdState>;
  @useResult
  $Res call({BannerAd? ad});
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res, $Val extends AdState>
    implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ad = freezed}) {
    return _then(
      _value.copyWith(
            ad:
                freezed == ad
                    ? _value.ad
                    : ad // ignore: cast_nullable_to_non_nullable
                        as BannerAd?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdStateImplCopyWith<$Res> implements $AdStateCopyWith<$Res> {
  factory _$$AdStateImplCopyWith(
    _$AdStateImpl value,
    $Res Function(_$AdStateImpl) then,
  ) = __$$AdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BannerAd? ad});
}

/// @nodoc
class __$$AdStateImplCopyWithImpl<$Res>
    extends _$AdStateCopyWithImpl<$Res, _$AdStateImpl>
    implements _$$AdStateImplCopyWith<$Res> {
  __$$AdStateImplCopyWithImpl(
    _$AdStateImpl _value,
    $Res Function(_$AdStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ad = freezed}) {
    return _then(
      _$AdStateImpl(
        ad:
            freezed == ad
                ? _value.ad
                : ad // ignore: cast_nullable_to_non_nullable
                    as BannerAd?,
      ),
    );
  }
}

/// @nodoc

class _$AdStateImpl implements _AdState {
  const _$AdStateImpl({this.ad});

  @override
  final BannerAd? ad;

  @override
  String toString() {
    return 'AdState(ad: $ad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdStateImpl &&
            (identical(other.ad, ad) || other.ad == ad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad);

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdStateImplCopyWith<_$AdStateImpl> get copyWith =>
      __$$AdStateImplCopyWithImpl<_$AdStateImpl>(this, _$identity);
}

abstract class _AdState implements AdState {
  const factory _AdState({final BannerAd? ad}) = _$AdStateImpl;

  @override
  BannerAd? get ad;

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdStateImplCopyWith<_$AdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

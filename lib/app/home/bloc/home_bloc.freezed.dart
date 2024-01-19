// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStockScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStockScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStockScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStockScan value) getStockScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStockScan value)? getStockScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStockScan value)? getStockScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStockScanImplCopyWith<$Res> {
  factory _$$GetStockScanImplCopyWith(
          _$GetStockScanImpl value, $Res Function(_$GetStockScanImpl) then) =
      __$$GetStockScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStockScanImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetStockScanImpl>
    implements _$$GetStockScanImplCopyWith<$Res> {
  __$$GetStockScanImplCopyWithImpl(
      _$GetStockScanImpl _value, $Res Function(_$GetStockScanImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStockScanImpl implements GetStockScan {
  const _$GetStockScanImpl();

  @override
  String toString() {
    return 'HomeEvent.getStockScan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStockScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStockScan,
  }) {
    return getStockScan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStockScan,
  }) {
    return getStockScan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStockScan,
    required TResult orElse(),
  }) {
    if (getStockScan != null) {
      return getStockScan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStockScan value) getStockScan,
  }) {
    return getStockScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStockScan value)? getStockScan,
  }) {
    return getStockScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStockScan value)? getStockScan,
    required TResult orElse(),
  }) {
    if (getStockScan != null) {
      return getStockScan(this);
    }
    return orElse();
  }
}

abstract class GetStockScan implements HomeEvent {
  const factory GetStockScan() = _$GetStockScanImpl;
}

/// @nodoc
mixin _$HomeState {
  HomeRepo get repo => throw _privateConstructorUsedError;
  HomeStatus get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<StockScanResponse>? get stockScanResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeRepo repo,
      HomeStatus status,
      String error,
      List<StockScanResponse>? stockScanResponse});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = null,
    Object? status = null,
    Object? error = null,
    Object? stockScanResponse = freezed,
  }) {
    return _then(_value.copyWith(
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as HomeRepo,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stockScanResponse: freezed == stockScanResponse
          ? _value.stockScanResponse
          : stockScanResponse // ignore: cast_nullable_to_non_nullable
              as List<StockScanResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeScreenImplCopyWith(
          _$HomeScreenImpl value, $Res Function(_$HomeScreenImpl) then) =
      __$$HomeScreenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeRepo repo,
      HomeStatus status,
      String error,
      List<StockScanResponse>? stockScanResponse});
}

/// @nodoc
class __$$HomeScreenImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeScreenImpl>
    implements _$$HomeScreenImplCopyWith<$Res> {
  __$$HomeScreenImplCopyWithImpl(
      _$HomeScreenImpl _value, $Res Function(_$HomeScreenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = null,
    Object? status = null,
    Object? error = null,
    Object? stockScanResponse = freezed,
  }) {
    return _then(_$HomeScreenImpl(
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as HomeRepo,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stockScanResponse: freezed == stockScanResponse
          ? _value._stockScanResponse
          : stockScanResponse // ignore: cast_nullable_to_non_nullable
              as List<StockScanResponse>?,
    ));
  }
}

/// @nodoc

class _$HomeScreenImpl implements HomeScreen {
  const _$HomeScreenImpl(
      {required this.repo,
      this.status = HomeStatus.initial,
      this.error = '',
      final List<StockScanResponse>? stockScanResponse})
      : _stockScanResponse = stockScanResponse;

  @override
  final HomeRepo repo;
  @override
  @JsonKey()
  final HomeStatus status;
  @override
  @JsonKey()
  final String error;
  final List<StockScanResponse>? _stockScanResponse;
  @override
  List<StockScanResponse>? get stockScanResponse {
    final value = _stockScanResponse;
    if (value == null) return null;
    if (_stockScanResponse is EqualUnmodifiableListView)
      return _stockScanResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(repo: $repo, status: $status, error: $error, stockScanResponse: $stockScanResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenImpl &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._stockScanResponse, _stockScanResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repo, status, error,
      const DeepCollectionEquality().hash(_stockScanResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenImplCopyWith<_$HomeScreenImpl> get copyWith =>
      __$$HomeScreenImplCopyWithImpl<_$HomeScreenImpl>(this, _$identity);
}

abstract class HomeScreen implements HomeState {
  const factory HomeScreen(
      {required final HomeRepo repo,
      final HomeStatus status,
      final String error,
      final List<StockScanResponse>? stockScanResponse}) = _$HomeScreenImpl;

  @override
  HomeRepo get repo;
  @override
  HomeStatus get status;
  @override
  String get error;
  @override
  List<StockScanResponse>? get stockScanResponse;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenImplCopyWith<_$HomeScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

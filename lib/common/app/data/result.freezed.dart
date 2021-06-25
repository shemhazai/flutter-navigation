// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  SuccessResult<T, E> success<T, E>(T data) {
    return SuccessResult<T, E>(
      data,
    );
  }

  FailureResult<T, E> failure<T, E>(E error) {
    return FailureResult<T, E>(
      error,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResult<T, E> value) success,
    required TResult Function(FailureResult<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResult<T, E> value)? success,
    TResult Function(FailureResult<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res> implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, E> _value;
  // ignore: unused_field
  final $Res Function(Result<T, E>) _then;
}

/// @nodoc
abstract class $SuccessResultCopyWith<T, E, $Res> {
  factory $SuccessResultCopyWith(
          SuccessResult<T, E> value, $Res Function(SuccessResult<T, E>) then) =
      _$SuccessResultCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessResultCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res>
    implements $SuccessResultCopyWith<T, E, $Res> {
  _$SuccessResultCopyWithImpl(
      SuccessResult<T, E> _value, $Res Function(SuccessResult<T, E>) _then)
      : super(_value, (v) => _then(v as SuccessResult<T, E>));

  @override
  SuccessResult<T, E> get _value => super._value as SuccessResult<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SuccessResult<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessResult<T, E> implements SuccessResult<T, E> {
  const _$SuccessResult(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessResult<T, E> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessResultCopyWith<T, E, SuccessResult<T, E>> get copyWith =>
      _$SuccessResultCopyWithImpl<T, E, SuccessResult<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResult<T, E> value) success,
    required TResult Function(FailureResult<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResult<T, E> value)? success,
    TResult Function(FailureResult<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessResult<T, E> implements Result<T, E> {
  const factory SuccessResult(T data) = _$SuccessResult<T, E>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResultCopyWith<T, E, SuccessResult<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResultCopyWith<T, E, $Res> {
  factory $FailureResultCopyWith(
          FailureResult<T, E> value, $Res Function(FailureResult<T, E>) then) =
      _$FailureResultCopyWithImpl<T, E, $Res>;
  $Res call({E error});
}

/// @nodoc
class _$FailureResultCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res>
    implements $FailureResultCopyWith<T, E, $Res> {
  _$FailureResultCopyWithImpl(
      FailureResult<T, E> _value, $Res Function(FailureResult<T, E>) _then)
      : super(_value, (v) => _then(v as FailureResult<T, E>));

  @override
  FailureResult<T, E> get _value => super._value as FailureResult<T, E>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FailureResult<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$FailureResult<T, E> implements FailureResult<T, E> {
  const _$FailureResult(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'Result<$T, $E>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureResult<T, E> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $FailureResultCopyWith<T, E, FailureResult<T, E>> get copyWith =>
      _$FailureResultCopyWithImpl<T, E, FailureResult<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResult<T, E> value) success,
    required TResult Function(FailureResult<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResult<T, E> value)? success,
    TResult Function(FailureResult<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureResult<T, E> implements Result<T, E> {
  const factory FailureResult(E error) = _$FailureResult<T, E>;

  E get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureResultCopyWith<T, E, FailureResult<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppEnvironmentTearOff {
  const _$AppEnvironmentTearOff();

// ignore: unused_element
  _AppEnvironment call({@required String type, @required String baseUrl}) {
    return _AppEnvironment(
      type: type,
      baseUrl: baseUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppEnvironment = _$AppEnvironmentTearOff();

/// @nodoc
mixin _$AppEnvironment {
  String get type;
  String get baseUrl;

  @JsonKey(ignore: true)
  $AppEnvironmentCopyWith<AppEnvironment> get copyWith;
}

/// @nodoc
abstract class $AppEnvironmentCopyWith<$Res> {
  factory $AppEnvironmentCopyWith(
          AppEnvironment value, $Res Function(AppEnvironment) then) =
      _$AppEnvironmentCopyWithImpl<$Res>;
  $Res call({String type, String baseUrl});
}

/// @nodoc
class _$AppEnvironmentCopyWithImpl<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  _$AppEnvironmentCopyWithImpl(this._value, this._then);

  final AppEnvironment _value;
  // ignore: unused_field
  final $Res Function(AppEnvironment) _then;

  @override
  $Res call({
    Object type = freezed,
    Object baseUrl = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      baseUrl: baseUrl == freezed ? _value.baseUrl : baseUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AppEnvironmentCopyWith<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  factory _$AppEnvironmentCopyWith(
          _AppEnvironment value, $Res Function(_AppEnvironment) then) =
      __$AppEnvironmentCopyWithImpl<$Res>;
  @override
  $Res call({String type, String baseUrl});
}

/// @nodoc
class __$AppEnvironmentCopyWithImpl<$Res>
    extends _$AppEnvironmentCopyWithImpl<$Res>
    implements _$AppEnvironmentCopyWith<$Res> {
  __$AppEnvironmentCopyWithImpl(
      _AppEnvironment _value, $Res Function(_AppEnvironment) _then)
      : super(_value, (v) => _then(v as _AppEnvironment));

  @override
  _AppEnvironment get _value => super._value as _AppEnvironment;

  @override
  $Res call({
    Object type = freezed,
    Object baseUrl = freezed,
  }) {
    return _then(_AppEnvironment(
      type: type == freezed ? _value.type : type as String,
      baseUrl: baseUrl == freezed ? _value.baseUrl : baseUrl as String,
    ));
  }
}

/// @nodoc
class _$_AppEnvironment implements _AppEnvironment {
  const _$_AppEnvironment({@required this.type, @required this.baseUrl})
      : assert(type != null),
        assert(baseUrl != null);

  @override
  final String type;
  @override
  final String baseUrl;

  @override
  String toString() {
    return 'AppEnvironment(type: $type, baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppEnvironment &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality().equals(other.baseUrl, baseUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(baseUrl);

  @JsonKey(ignore: true)
  @override
  _$AppEnvironmentCopyWith<_AppEnvironment> get copyWith =>
      __$AppEnvironmentCopyWithImpl<_AppEnvironment>(this, _$identity);
}

abstract class _AppEnvironment implements AppEnvironment {
  const factory _AppEnvironment(
      {@required String type, @required String baseUrl}) = _$_AppEnvironment;

  @override
  String get type;
  @override
  String get baseUrl;
  @override
  @JsonKey(ignore: true)
  _$AppEnvironmentCopyWith<_AppEnvironment> get copyWith;
}
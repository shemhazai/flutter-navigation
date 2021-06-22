// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigator_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DestinationTearOff {
  const _$DestinationTearOff();

  _Home home() {
    return const _Home();
  }

  _Article article(
      {required SearchResult searchResult,
      required Article article,
      Color? accentColor}) {
    return _Article(
      searchResult: searchResult,
      article: article,
      accentColor: accentColor,
    );
  }
}

/// @nodoc
const $Destination = _$DestinationTearOff();

/// @nodoc
mixin _$Destination {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)
        article,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)?
        article,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_Article value) article,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_Article value)? article,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res> implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  final Destination _value;
  // ignore: unused_field
  final $Res Function(Destination) _then;
}

/// @nodoc
abstract class _$HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) then) =
      __$HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(_Home _value, $Res Function(_Home) _then)
      : super(_value, (v) => _then(v as _Home));

  @override
  _Home get _value => super._value as _Home;
}

/// @nodoc

class _$_Home implements _Home {
  const _$_Home();

  @override
  String toString() {
    return 'Destination.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)
        article,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)?
        article,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_Article value) article,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_Article value)? article,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home implements Destination {
  const factory _Home() = _$_Home;
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  $Res call({SearchResult searchResult, Article article, Color? accentColor});

  $SearchResultCopyWith<$Res> get searchResult;
  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? article = freezed,
    Object? accentColor = freezed,
  }) {
    return _then(_Article(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      accentColor: accentColor == freezed
          ? _value.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }

  @override
  $SearchResultCopyWith<$Res> get searchResult {
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }

  @override
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc

class _$_Article implements _Article {
  const _$_Article(
      {required this.searchResult, required this.article, this.accentColor});

  @override
  final SearchResult searchResult;
  @override
  final Article article;
  @override
  final Color? accentColor;

  @override
  String toString() {
    return 'Destination.article(searchResult: $searchResult, article: $article, accentColor: $accentColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)) &&
            (identical(other.article, article) ||
                const DeepCollectionEquality()
                    .equals(other.article, article)) &&
            (identical(other.accentColor, accentColor) ||
                const DeepCollectionEquality()
                    .equals(other.accentColor, accentColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchResult) ^
      const DeepCollectionEquality().hash(article) ^
      const DeepCollectionEquality().hash(accentColor);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)
        article,
  }) {
    return article(searchResult, this.article, accentColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(
            SearchResult searchResult, Article article, Color? accentColor)?
        article,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(searchResult, this.article, accentColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_Article value) article,
  }) {
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_Article value)? article,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(this);
    }
    return orElse();
  }
}

abstract class _Article implements Destination {
  const factory _Article(
      {required SearchResult searchResult,
      required Article article,
      Color? accentColor}) = _$_Article;

  SearchResult get searchResult => throw _privateConstructorUsedError;
  Article get article => throw _privateConstructorUsedError;
  Color? get accentColor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}

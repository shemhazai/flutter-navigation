// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Empty empty() {
    return const _Empty();
  }

  _NoResults noResults() {
    return const _NoResults();
  }

  _Content content(
      {required SearchResult searchResult,
      required List<HomeArticleHeadline> headlines}) {
    return _Content(
      searchResult: searchResult,
      headlines: headlines,
    );
  }

  _Error error(SearchArticleError error) {
    return _Error(
      error,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'HomeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements HomeState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$NoResultsCopyWith<$Res> {
  factory _$NoResultsCopyWith(
          _NoResults value, $Res Function(_NoResults) then) =
      __$NoResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoResultsCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$NoResultsCopyWith<$Res> {
  __$NoResultsCopyWithImpl(_NoResults _value, $Res Function(_NoResults) _then)
      : super(_value, (v) => _then(v as _NoResults));

  @override
  _NoResults get _value => super._value as _NoResults;
}

/// @nodoc

class _$_NoResults implements _NoResults {
  const _$_NoResults();

  @override
  String toString() {
    return 'HomeState.noResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class _NoResults implements HomeState {
  const factory _NoResults() = _$_NoResults;
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  $Res call({SearchResult searchResult, List<HomeArticleHeadline> headlines});

  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? headlines = freezed,
  }) {
    return _then(_Content(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
      headlines: headlines == freezed
          ? _value.headlines
          : headlines // ignore: cast_nullable_to_non_nullable
              as List<HomeArticleHeadline>,
    ));
  }

  @override
  $SearchResultCopyWith<$Res> get searchResult {
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc

class _$_Content implements _Content {
  const _$_Content({required this.searchResult, required this.headlines});

  @override
  final SearchResult searchResult;
  @override
  final List<HomeArticleHeadline> headlines;

  @override
  String toString() {
    return 'HomeState.content(searchResult: $searchResult, headlines: $headlines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Content &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)) &&
            (identical(other.headlines, headlines) ||
                const DeepCollectionEquality()
                    .equals(other.headlines, headlines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchResult) ^
      const DeepCollectionEquality().hash(headlines);

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) {
    return content(searchResult, headlines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(searchResult, headlines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements HomeState {
  const factory _Content(
      {required SearchResult searchResult,
      required List<HomeArticleHeadline> headlines}) = _$_Content;

  SearchResult get searchResult => throw _privateConstructorUsedError;
  List<HomeArticleHeadline> get headlines => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({SearchArticleError error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SearchArticleError,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final SearchArticleError error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function() noResults,
    required TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)
        content,
    required TResult Function(SearchArticleError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function()? noResults,
    TResult Function(
            SearchResult searchResult, List<HomeArticleHeadline> headlines)?
        content,
    TResult Function(SearchArticleError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(SearchArticleError error) = _$_Error;

  SearchArticleError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeArticleHeadlineTearOff {
  const _$HomeArticleHeadlineTearOff();

  _HomeArticlePage call(
      {required String id, required String title, required Article article}) {
    return _HomeArticlePage(
      id: id,
      title: title,
      article: article,
    );
  }
}

/// @nodoc
const $HomeArticleHeadline = _$HomeArticleHeadlineTearOff();

/// @nodoc
mixin _$HomeArticleHeadline {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Article get article => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeArticleHeadlineCopyWith<HomeArticleHeadline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeArticleHeadlineCopyWith<$Res> {
  factory $HomeArticleHeadlineCopyWith(
          HomeArticleHeadline value, $Res Function(HomeArticleHeadline) then) =
      _$HomeArticleHeadlineCopyWithImpl<$Res>;
  $Res call({String id, String title, Article article});

  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class _$HomeArticleHeadlineCopyWithImpl<$Res>
    implements $HomeArticleHeadlineCopyWith<$Res> {
  _$HomeArticleHeadlineCopyWithImpl(this._value, this._then);

  final HomeArticleHeadline _value;
  // ignore: unused_field
  final $Res Function(HomeArticleHeadline) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? article = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }

  @override
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc
abstract class _$HomeArticlePageCopyWith<$Res>
    implements $HomeArticleHeadlineCopyWith<$Res> {
  factory _$HomeArticlePageCopyWith(
          _HomeArticlePage value, $Res Function(_HomeArticlePage) then) =
      __$HomeArticlePageCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, Article article});

  @override
  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$HomeArticlePageCopyWithImpl<$Res>
    extends _$HomeArticleHeadlineCopyWithImpl<$Res>
    implements _$HomeArticlePageCopyWith<$Res> {
  __$HomeArticlePageCopyWithImpl(
      _HomeArticlePage _value, $Res Function(_HomeArticlePage) _then)
      : super(_value, (v) => _then(v as _HomeArticlePage));

  @override
  _HomeArticlePage get _value => super._value as _HomeArticlePage;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? article = freezed,
  }) {
    return _then(_HomeArticlePage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }
}

/// @nodoc

class _$_HomeArticlePage implements _HomeArticlePage {
  const _$_HomeArticlePage(
      {required this.id, required this.title, required this.article});

  @override
  final String id;
  @override
  final String title;
  @override
  final Article article;

  @override
  String toString() {
    return 'HomeArticleHeadline(id: $id, title: $title, article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeArticlePage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(article);

  @JsonKey(ignore: true)
  @override
  _$HomeArticlePageCopyWith<_HomeArticlePage> get copyWith =>
      __$HomeArticlePageCopyWithImpl<_HomeArticlePage>(this, _$identity);
}

abstract class _HomeArticlePage implements HomeArticleHeadline {
  const factory _HomeArticlePage(
      {required String id,
      required String title,
      required Article article}) = _$_HomeArticlePage;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Article get article => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeArticlePageCopyWith<_HomeArticlePage> get copyWith =>
      throw _privateConstructorUsedError;
}

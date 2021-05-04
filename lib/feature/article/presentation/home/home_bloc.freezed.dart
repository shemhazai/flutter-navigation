// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Empty empty() {
    return const _Empty();
  }

// ignore: unused_element
  _NoResults noResults() {
    return const _NoResults();
  }

// ignore: unused_element
  _Content content(
      {@required SearchResult searchResult,
      @required List<HomeArticleHeadline> headlines}) {
    return _Content(
      searchResult: searchResult,
      headlines: headlines,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult empty(),
    @required TResult noResults(),
    @required
        TResult content(
            SearchResult searchResult, List<HomeArticleHeadline> headlines),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult empty(),
    TResult noResults(),
    TResult content(
        SearchResult searchResult, List<HomeArticleHeadline> headlines),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult empty(_Empty value),
    @required TResult noResults(_NoResults value),
    @required TResult content(_Content value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult empty(_Empty value),
    TResult noResults(_NoResults value),
    TResult content(_Content value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult empty(),
    @required TResult noResults(),
    @required
        TResult content(
            SearchResult searchResult, List<HomeArticleHeadline> headlines),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult empty(),
    TResult noResults(),
    TResult content(
        SearchResult searchResult, List<HomeArticleHeadline> headlines),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult empty(_Empty value),
    @required TResult noResults(_NoResults value),
    @required TResult content(_Content value),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult empty(_Empty value),
    TResult noResults(_NoResults value),
    TResult content(_Content value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult empty(),
    @required TResult noResults(),
    @required
        TResult content(
            SearchResult searchResult, List<HomeArticleHeadline> headlines),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult empty(),
    TResult noResults(),
    TResult content(
        SearchResult searchResult, List<HomeArticleHeadline> headlines),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult empty(_Empty value),
    @required TResult noResults(_NoResults value),
    @required TResult content(_Content value),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult empty(_Empty value),
    TResult noResults(_NoResults value),
    TResult content(_Content value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult empty(),
    @required TResult noResults(),
    @required
        TResult content(
            SearchResult searchResult, List<HomeArticleHeadline> headlines),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult empty(),
    TResult noResults(),
    TResult content(
        SearchResult searchResult, List<HomeArticleHeadline> headlines),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult empty(_Empty value),
    @required TResult noResults(_NoResults value),
    @required TResult content(_Content value),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult empty(_Empty value),
    TResult noResults(_NoResults value),
    TResult content(_Content value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object searchResult = freezed,
    Object headlines = freezed,
  }) {
    return _then(_Content(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult as SearchResult,
      headlines: headlines == freezed
          ? _value.headlines
          : headlines as List<HomeArticleHeadline>,
    ));
  }

  @override
  $SearchResultCopyWith<$Res> get searchResult {
    if (_value.searchResult == null) {
      return null;
    }
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc
class _$_Content implements _Content {
  const _$_Content({@required this.searchResult, @required this.headlines})
      : assert(searchResult != null),
        assert(headlines != null);

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
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult empty(),
    @required TResult noResults(),
    @required
        TResult content(
            SearchResult searchResult, List<HomeArticleHeadline> headlines),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return content(searchResult, headlines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult empty(),
    TResult noResults(),
    TResult content(
        SearchResult searchResult, List<HomeArticleHeadline> headlines),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(searchResult, headlines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult empty(_Empty value),
    @required TResult noResults(_NoResults value),
    @required TResult content(_Content value),
  }) {
    assert(loading != null);
    assert(empty != null);
    assert(noResults != null);
    assert(content != null);
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult empty(_Empty value),
    TResult noResults(_NoResults value),
    TResult content(_Content value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements HomeState {
  const factory _Content(
      {@required SearchResult searchResult,
      @required List<HomeArticleHeadline> headlines}) = _$_Content;

  SearchResult get searchResult;
  List<HomeArticleHeadline> get headlines;
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith;
}

/// @nodoc
class _$HomeArticleHeadlineTearOff {
  const _$HomeArticleHeadlineTearOff();

// ignore: unused_element
  _HomeArticlePage call(
      {@required String id,
      @required String title,
      @required Article article}) {
    return _HomeArticlePage(
      id: id,
      title: title,
      article: article,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeArticleHeadline = _$HomeArticleHeadlineTearOff();

/// @nodoc
mixin _$HomeArticleHeadline {
  String get id;
  String get title;
  Article get article;

  @JsonKey(ignore: true)
  $HomeArticleHeadlineCopyWith<HomeArticleHeadline> get copyWith;
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
    Object id = freezed,
    Object title = freezed,
    Object article = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      article: article == freezed ? _value.article : article as Article,
    ));
  }

  @override
  $ArticleCopyWith<$Res> get article {
    if (_value.article == null) {
      return null;
    }
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
    Object id = freezed,
    Object title = freezed,
    Object article = freezed,
  }) {
    return _then(_HomeArticlePage(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      article: article == freezed ? _value.article : article as Article,
    ));
  }
}

/// @nodoc
class _$_HomeArticlePage implements _HomeArticlePage {
  const _$_HomeArticlePage(
      {@required this.id, @required this.title, @required this.article})
      : assert(id != null),
        assert(title != null),
        assert(article != null);

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
      {@required String id,
      @required String title,
      @required Article article}) = _$_HomeArticlePage;

  @override
  String get id;
  @override
  String get title;
  @override
  Article get article;
  @override
  @JsonKey(ignore: true)
  _$HomeArticlePageCopyWith<_HomeArticlePage> get copyWith;
}

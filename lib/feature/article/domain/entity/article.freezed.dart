// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
class _$SearchResultTearOff {
  const _$SearchResultTearOff();

// ignore: unused_element
  _SearchResult call(
      {@required List<Page> pages, @required List<Article> items}) {
    return _SearchResult(
      pages: pages,
      items: items,
    );
  }

// ignore: unused_element
  SearchResult fromJson(Map<String, Object> json) {
    return SearchResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResult = _$SearchResultTearOff();

/// @nodoc
mixin _$SearchResult {
  List<Page> get pages;
  List<Article> get items;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res>;
  $Res call({List<Page> pages, List<Article> items});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res> implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  final SearchResult _value;
  // ignore: unused_field
  final $Res Function(SearchResult) _then;

  @override
  $Res call({
    Object pages = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      pages: pages == freezed ? _value.pages : pages as List<Page>,
      items: items == freezed ? _value.items : items as List<Article>,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(
          _SearchResult value, $Res Function(_SearchResult) then) =
      __$SearchResultCopyWithImpl<$Res>;
  @override
  $Res call({List<Page> pages, List<Article> items});
}

/// @nodoc
class __$SearchResultCopyWithImpl<$Res> extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(
      _SearchResult _value, $Res Function(_SearchResult) _then)
      : super(_value, (v) => _then(v as _SearchResult));

  @override
  _SearchResult get _value => super._value as _SearchResult;

  @override
  $Res call({
    Object pages = freezed,
    Object items = freezed,
  }) {
    return _then(_SearchResult(
      pages: pages == freezed ? _value.pages : pages as List<Page>,
      items: items == freezed ? _value.items : items as List<Article>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchResult implements _SearchResult {
  const _$_SearchResult({@required this.pages, @required this.items})
      : assert(pages != null),
        assert(items != null);

  factory _$_SearchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultFromJson(json);

  @override
  final List<Page> pages;
  @override
  final List<Article> items;

  @override
  String toString() {
    return 'SearchResult(pages: $pages, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResult &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$SearchResultCopyWith<_SearchResult> get copyWith =>
      __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultToJson(this);
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {@required List<Page> pages,
      @required List<Article> items}) = _$_SearchResult;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$_SearchResult.fromJson;

  @override
  List<Page> get pages;
  @override
  List<Article> get items;
  @override
  @JsonKey(ignore: true)
  _$SearchResultCopyWith<_SearchResult> get copyWith;
}

Page _$PageFromJson(Map<String, dynamic> json) {
  return _Page.fromJson(json);
}

/// @nodoc
class _$PageTearOff {
  const _$PageTearOff();

// ignore: unused_element
  _Page call(
      {@required String id, @required String title, @required String itemId}) {
    return _Page(
      id: id,
      title: title,
      itemId: itemId,
    );
  }

// ignore: unused_element
  Page fromJson(Map<String, Object> json) {
    return Page.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Page = _$PageTearOff();

/// @nodoc
mixin _$Page {
  String get id;
  String get title;
  String get itemId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PageCopyWith<Page> get copyWith;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res>;
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class _$PageCopyWithImpl<$Res> implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  final Page _value;
  // ignore: unused_field
  final $Res Function(Page) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object itemId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

/// @nodoc
abstract class _$PageCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$PageCopyWith(_Page value, $Res Function(_Page) then) =
      __$PageCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class __$PageCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements _$PageCopyWith<$Res> {
  __$PageCopyWithImpl(_Page _value, $Res Function(_Page) _then)
      : super(_value, (v) => _then(v as _Page));

  @override
  _Page get _value => super._value as _Page;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object itemId = freezed,
  }) {
    return _then(_Page(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Page implements _Page {
  const _$_Page(
      {@required this.id, @required this.title, @required this.itemId})
      : assert(id != null),
        assert(title != null),
        assert(itemId != null);

  factory _$_Page.fromJson(Map<String, dynamic> json) =>
      _$_$_PageFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String itemId;

  @override
  String toString() {
    return 'Page(id: $id, title: $title, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Page &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$PageCopyWith<_Page> get copyWith =>
      __$PageCopyWithImpl<_Page>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageToJson(this);
  }
}

abstract class _Page implements Page {
  const factory _Page(
      {@required String id,
      @required String title,
      @required String itemId}) = _$_Page;

  factory _Page.fromJson(Map<String, dynamic> json) = _$_Page.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$PageCopyWith<_Page> get copyWith;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

// ignore: unused_element
  _Article call(
      {@required String id,
      @required String title,
      @required String imageUrl,
      @required String body}) {
    return _Article(
      id: id,
      title: title,
      imageUrl: imageUrl,
      body: body,
    );
  }

// ignore: unused_element
  Article fromJson(Map<String, Object> json) {
    return Article.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  String get id;
  String get title;
  String get imageUrl;
  String get body;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call({String id, String title, String imageUrl, String body});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String imageUrl, String body});
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object imageUrl = freezed,
    Object body = freezed,
  }) {
    return _then(_Article(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Article implements _Article {
  const _$_Article(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.body})
      : assert(id != null),
        assert(title != null),
        assert(imageUrl != null),
        assert(body != null);

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String body;

  @override
  String toString() {
    return 'Article(id: $id, title: $title, imageUrl: $imageUrl, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleToJson(this);
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@required String id,
      @required String title,
      @required String imageUrl,
      @required String body}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith;
}

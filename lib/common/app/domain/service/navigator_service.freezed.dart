// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigator_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DestinationTearOff {
  const _$DestinationTearOff();

// ignore: unused_element
  _Home home() {
    return const _Home();
  }

// ignore: unused_element
  _Article article({@required SearchResult searchResult, @required String id}) {
    return _Article(
      searchResult: searchResult,
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Destination = _$DestinationTearOff();

/// @nodoc
mixin _$Destination {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult home(),
    @required TResult article(SearchResult searchResult, String id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult home(),
    TResult article(SearchResult searchResult, String id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult home(_Home value),
    @required TResult article(_Article value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult home(_Home value),
    TResult article(_Article value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult home(),
    @required TResult article(SearchResult searchResult, String id),
  }) {
    assert(home != null);
    assert(article != null);
    return home();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult home(),
    TResult article(SearchResult searchResult, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult home(_Home value),
    @required TResult article(_Article value),
  }) {
    assert(home != null);
    assert(article != null);
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult home(_Home value),
    TResult article(_Article value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $Res call({SearchResult searchResult, String id});

  $SearchResultCopyWith<$Res> get searchResult;
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
    Object searchResult = freezed,
    Object id = freezed,
  }) {
    return _then(_Article(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult as SearchResult,
      id: id == freezed ? _value.id : id as String,
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
class _$_Article implements _Article {
  const _$_Article({@required this.searchResult, @required this.id})
      : assert(searchResult != null),
        assert(id != null);

  @override
  final SearchResult searchResult;
  @override
  final String id;

  @override
  String toString() {
    return 'Destination.article(searchResult: $searchResult, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchResult) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult home(),
    @required TResult article(SearchResult searchResult, String id),
  }) {
    assert(home != null);
    assert(article != null);
    return article(searchResult, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult home(),
    TResult article(SearchResult searchResult, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (article != null) {
      return article(searchResult, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult home(_Home value),
    @required TResult article(_Article value),
  }) {
    assert(home != null);
    assert(article != null);
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult home(_Home value),
    TResult article(_Article value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (article != null) {
      return article(this);
    }
    return orElse();
  }
}

abstract class _Article implements Destination {
  const factory _Article(
      {@required SearchResult searchResult, @required String id}) = _$_Article;

  SearchResult get searchResult;
  String get id;
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith;
}
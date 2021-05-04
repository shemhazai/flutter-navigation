import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation/common/app/presentation/base_bloc.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';

part 'article_bloc.freezed.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.content({@required Article article}) = _Content;
}

class ArticleBloc extends BaseCubit<ArticleState> {
  ArticleBloc() : super(ArticleState.loading());

  void initialize(SearchResult searchResult, String id) {
    emit(ArticleState.content(article: searchResult.getArticle(id)));
  }
}

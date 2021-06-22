import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation/common/app/presentation/base_bloc.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

part 'home_bloc.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.empty() = _Empty;
  const factory HomeState.noResults() = _NoResults;
  const factory HomeState.content({
    required SearchResult searchResult,
    required List<HomeArticleHeadline> headlines,
  }) = _Content;
}

@freezed
class HomeArticleHeadline with _$HomeArticleHeadline {
  const factory HomeArticleHeadline({
    required String id,
    required String title,
    required Article article,
  }) = _HomeArticlePage;
}

class HomeBloc extends BaseCubit<HomeState> {
  final ArticleUseCase _useCase;

  HomeBloc(this._useCase) : super(HomeState.empty());

  void search(String text) async {
    if (text.isEmpty) {
      emit(HomeState.empty());
      return;
    }

    emit(HomeState.loading());
    try {
      final SearchResult result = await _useCase.searchArticles(text);
      final List<HomeArticleHeadline> articles = _mapArticles(result);
      if (articles.isEmpty) {
        emit(HomeState.noResults());
      } else {
        emit(HomeState.content(searchResult: result, headlines: articles));
      }
    } catch (error) {
      emit(HomeState.noResults());
    }
  }

  List<HomeArticleHeadline> _mapArticles(SearchResult result) {
    return result.pages.map((e) {
      return HomeArticleHeadline(
        id: e.id,
        title: e.title,
        article: result.getArticle(e.itemId),
      );
    }).toList();
  }
}

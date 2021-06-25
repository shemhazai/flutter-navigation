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
  const factory HomeState.error(SearchArticleError error) = _Error;
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

  HomeBloc(this._useCase) : super(const HomeState.empty());

  void search(String text) async {
    if (text.isEmpty) {
      emit(const HomeState.empty());
      return;
    }

    emit(const HomeState.loading());

    final result = await _useCase.searchArticles(text);
    result.when(
      success: (data) {
        final articles = _mapArticles(data);
        if (articles.isEmpty) {
          emit(const HomeState.noResults());
        } else {
          emit(HomeState.content(searchResult: data, headlines: articles));
        }
      },
      failure: (error) {
        if (error == SearchArticleError.noResults) {
          emit(const HomeState.noResults());
        } else {
          emit(HomeState.error(error));
        }
      },
    );
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

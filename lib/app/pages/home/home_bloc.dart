import 'package:navigation/app/common/bloc/base_cubit.dart';
import 'package:navigation/app/pages/home/home_state.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/entity/article.dart';

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
    final newState = result.when(
      success: (data) {
        final articles = _mapArticles(data);
        if (articles.isEmpty) {
          return const HomeState.noResults();
        } else {
          return HomeState.content(searchResult: data, headlines: articles);
        }
      },
      failure: (error) {
        if (error == SearchArticleError.noResults) {
          return const HomeState.noResults();
        } else {
          return HomeState.error(error);
        }
      },
    );

    emit(newState);
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

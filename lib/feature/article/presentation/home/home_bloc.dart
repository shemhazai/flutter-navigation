import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation/common/app/presentation/base_bloc.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

part 'home_bloc.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.empty() = _Empty;
  const factory HomeState.content({@required List<HomeArticlePage> pages}) = _Content;
  const factory HomeState.noResults() = _NoResults;
}

@freezed
abstract class HomeArticlePage with _$HomeArticlePage {
  const factory HomeArticlePage({
    @required String id,
    @required String title,
    @required Article article,
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
      final SearchResult result = await _useCase.getArticles(text);
      final List<HomeArticlePage> articles = _mapArticles(result);
      if (articles.isEmpty) {
        emit(HomeState.noResults());
      } else {
        emit(HomeState.content(pages: articles));
      }
    } catch (error) {
      emit(HomeState.noResults());
    }
  }

  List<HomeArticlePage> _mapArticles(SearchResult result) {
    return result.pages.map((e) {
      return HomeArticlePage(
        id: e.id,
        title: e.title,
        article: result.getArticle(e.itemId),
      );
    }).toList();
  }
}

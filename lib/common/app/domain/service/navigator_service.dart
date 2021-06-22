import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';

part 'navigator_service.freezed.dart';

abstract class NavigatorService {
  GlobalKey<NavigatorState> get key;

  Future<T?> navigateToPage<T>({
    BuildContext? context,
    required Destination page,
    bool replace = false,
  });

  void pop({BuildContext context});
}

@freezed
class Destination with _$Destination {
  const factory Destination.home() = _Home;

  const factory Destination.article({
    required SearchResult searchResult,
    required Article article,
    Color? accentColor,
  }) = _Article;
}

class Routes {
  static const String home = '/home';
  static const String article = '/article';
}

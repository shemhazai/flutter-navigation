import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_environment.freezed.dart';

@freezed
class AppEnvironment with _$AppEnvironment {
  const factory AppEnvironment({
    required String type,
    required String baseUrl,
  }) = _AppEnvironment;
}

const AppEnvironment develop = AppEnvironment(
  type: 'develop',
  baseUrl: 'https://simpleclub-coding-challenges.web.app/navigating-dynamic-content/',
);

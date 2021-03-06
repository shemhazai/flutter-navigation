import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result<T, E> {
  const factory Result.success(T data) = SuccessResult<T, E>;
  const factory Result.failure(E error) = FailureResult<T, E>;
}

extension FutureResult<T, E> on Future<Result<T, E>> {
  /// Awaits the future result and returns its value or throws an exception.
  Future<T> require() async {
    final result = await this;
    return result.when(
      success: (data) => data,
      failure: (error) => throw Exception(error),
    );
  }
}

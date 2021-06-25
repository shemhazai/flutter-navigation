import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result {
  const factory Result.success(T data) = SuccessResult;
  const factory Result.failure(E error) = FailureResult;
}

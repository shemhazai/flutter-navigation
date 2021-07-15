abstract class LoggerAppender {
  void append(String message);

  void appendError(dynamic error, [StackTrace? stackTrace]);
}

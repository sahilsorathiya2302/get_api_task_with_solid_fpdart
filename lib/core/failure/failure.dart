class Failure {
  final String message;
  final int? code;
  final Exception? exception;

  Failure({
    required this.message,
    this.code,
    this.exception,
  });

  @override
  String toString() => 'Failure(message: $message, code: $code)';
}

// You can also create specific failure types by extending this class
class ServerFailure extends Failure {
  ServerFailure({required super.message, super.code, super.exception});
}

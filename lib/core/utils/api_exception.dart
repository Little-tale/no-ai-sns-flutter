enum ApiErrorType { unauthorized, message }

class ApiException implements Exception {
  ApiException(this.type, {this.message});

  final ApiErrorType type;
  final String? message;

  @override
  String toString() {
    return switch (type) {
      ApiErrorType.unauthorized => 'Unauthorized',
      ApiErrorType.message => message ?? 'Unknown error',
    };
  }
}

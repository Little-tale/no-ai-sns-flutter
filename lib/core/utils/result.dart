// ignore_for_file: non_constant_identifier_names

/// Use [Result.Success] to create a successful result with a value of type [T].
/// Use [Result.Failure] to create an error result with an [Exception].
sealed class Result<T> {
  const Result();

  /// Creates an instance of Result containing a value
  factory Result.Success(T value) => Success(value);

  /// Create an instance of Result containing an error
  factory Result.Failure(Exception error) => Failure(error);
}

/// Subclass of Result for values
final class Success<T> extends Result<T> {
  const Success(this.value);

  /// Returned value in result
  final T value;
}

/// Subclass of Result for errors
final class Failure<T> extends Result<T> {
  const Failure(this.error);

  /// Returned error in result
  final Exception error;
}

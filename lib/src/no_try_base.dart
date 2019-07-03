/// The foundation of a truly exception-free and error-free
/// approach to programming.
///
/// [Result] when used as a result to a computation allows to refactor
/// methods in a way to avoid throwing and catching exceptions and allows
/// to avoid using try-catch statements
class Result<T, E> {
  /// [success] true if the result represents a successful computation.
  final bool success;

  /// [value] contains the result of a computation.
  final T value;

  /// [reason] contains the reason why the computation failed and why the
  /// value is not valid.
  final E reason;

  /// creates a successful result with the computation result value.
  Result.success(this.value)
      : success = true,
        reason = null;

  /// creates an unsuccessful result with a reason object to explain it.
  Result.failed(this.reason)
      : success = false,
        value = null;
}

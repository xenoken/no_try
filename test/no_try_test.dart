import 'package:no_try/no_try.dart';
import 'package:test/test.dart';

Result<bool, String> execComputation(String arg) => arg.isNotEmpty
    ? Result.success(true)
    : Result.failed('Null argument was give.');

void main() {
  /// returns the actual value.
  test('Result.success', () {
    var result = execComputation('Hello World!');
    print(result.success ? result.value : result.reason);
    expect(!result.success, isFalse);
    expect(result.value, isA<bool>());
    expect(result.reason, isNull);
  });

  /// returns the reason the computation failed.
  test('Result.failed', () {
    var result = execComputation('');
    print(result.success ? result.value : result.reason);
    expect(result.success, isFalse);
    expect(result.reason, isA<String>());
    expect(result.value, isNull);
  });
}

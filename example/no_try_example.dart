import 'package:no_try/no_try.dart';

Result<bool, String> execComputation(String arg) => arg.isNotEmpty
    ? Result.success(true)
    : Result.failed('Null argument was give.');

void main() {
  /// returns the actual value.
  var result = execComputation('Hello World!');
  print(result.success ? result.value : result.reason);

  /// returns the reason the computation failed.
  result = execComputation('');
  print(result.success ? result.value : result.reason);
}

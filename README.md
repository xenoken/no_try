Foundation for a exception-free approach to programing in Dart.

No more try-catch blocks and exception throwing. Only functions returning a _value_ on success and a _reason_ on failure.

## Usage

A simple usage example:

```dart
import 'package:no_try/no_try.dart';

Result<bool, String> execComputation(String arg) => arg.isNotEmpty
    ? Result.success(true)
    : Result.failed('Null argument was give.');


void main() {
  /// returns the actual value.
  var result = execComputation('Hello World!');
  print(result.success ? result.value : result.reason );

  /// returns the reason the computation failed.
  result = execComputation('');
  print( result.success ? result.value : result.reason);
}

```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/xenoken/no_try/issues

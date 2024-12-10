void main() {
  //Unhandled
  // int result = 5 ~/ 0;
  // print(result);

  //handled
  // try {
  //   int result = 5 ~/ 0;
  //   print(result);
  // } catch (e) {
  //   print('Error: $e');
  // }

  //handled specific exception
  // try {
  //   int result = 5 ~/ 0;
  //   print(result);
  // } on UnsupportedError {
  //   print('You can not divide a int value by Zero!');
  // } catch (e) {
  //   print('Error: $e');
  // } finally {
  //   print('Finally block should always work');
  // }

  //Using custom exceptions
  // try {
  //   throw MyCustomException('Flutter course exception');
  // } catch (e) {
  //   print(e.toString());
  // }

  //stacktrace
  // try {
  //   int result = 5 ~/ 0;
  // } catch (e, stackTrace) {
  //   print('Exception: $e');
  //   print('Stack Trace: $stackTrace');
  // }

  //propagation of exception
  try {
    outerFunction(); // outerFunction calls innerFunction
  } catch (e) {
    print('Caught in main: $e');
  }
}

void outerFunction() {
  innerFunction(); // No try-catch here, so the error propagates further
}

void innerFunction() {
  throw Exception('Error occurred in innerFunction'); // Exception occurs here
}

class MyCustomException implements Exception {
  final String message;

  MyCustomException(this.message);

  @override
  String toString() {
    return 'MyCustomException: $message';
  }
}

class Calculator {
  // Method with optional parameters
  int add([int a = 0, int b = 0]) {
    return a + b;
  }
}

void main() {
  var calculator = Calculator();

  // Calls the add() method with no parameters
  print('Addition with no arguments: ${calculator.add()}');

  // Calls the add() method with one parameter
  print('Addition with one argument: ${calculator.add(5)}');

  // Calls the add() method with two parameters
  print('Addition with two arguments: ${calculator.add(3, 7)}');
}

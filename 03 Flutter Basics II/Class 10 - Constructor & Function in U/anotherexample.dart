import 'dart:math';

import 'constructorexample.dart';

class AnotherExampleOfConstructor {
  void main() {
    Person important = Person.important();
    important.name = "Yunus";
  }

  int aNumber = 6;
  int randomNumber() {
    Random random = Random();
    return random.nextInt(5) + 1;
  }
}

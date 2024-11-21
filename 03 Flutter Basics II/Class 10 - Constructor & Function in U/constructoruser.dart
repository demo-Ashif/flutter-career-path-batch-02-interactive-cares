import 'constructorexample.dart';

class Use {
  void main() {
    Person aPerson = Person.withName("Zakir");
    Person anotherPerson = Person("null", 100, null);
    Person important = Person.important();
  }
}

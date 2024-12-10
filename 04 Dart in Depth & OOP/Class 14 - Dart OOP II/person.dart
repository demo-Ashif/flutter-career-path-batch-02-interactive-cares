//public and private - part of encapsulation

// //class - properties and methods
class Person {
  String _name; //not exposed
  int _age; //not exposed

  //Default constructor
  Person(this._name, this._age);

  //Method
  void displayInfo() {
    //exposed public
    print('Name: $_name - Age: $_age');
  }
}

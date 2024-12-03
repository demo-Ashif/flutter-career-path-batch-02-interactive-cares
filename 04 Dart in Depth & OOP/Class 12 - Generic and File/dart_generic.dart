import 'dart:io';

import 'dart_file.dart';

void main() {
  // printPersonInformation({"Roll": 200, "Name": "Zahidul"});
  // printPersonInformation("No personal Information");
  // printPersonInformation(100);
  // Person aPerson = Person("Str Value");
  // aPerson.displayInformation();
  calculator();
  var information = Information("name", 11, true, ["adress"]);
  var someData = [1, 2, 3, "sd"];
  String some = "some";

  var fileModifier = FileModifier();
  // fileModifier = FileModifier("$path/write_exmpl.txt");
  fileModifier.setFile("$path/write_exmpl.txt");
}

void printPersonInformation<T>(T information) {
  if (information is List) {
    for (var element in information) {
      print(element);
    }
  } else if (information is Map) {
    information.forEach((key, value) {
      print("$key: $value");
    });
  } else if (information is String) {
    print('Information is $information');
  } else {
    print("Nothing to do");
  }
}

class Information {
  String name;
  int age;
  bool isStudent;
  List<String> adress;

  Information(this.name, this.age, this.isStudent, this.adress);

  printIt() {
    print("Name : $name");
    print("Age : $age");
  }
}

class Person<T extends Information, String, bool> {
  T information;
  String name;
  bool isStudent;
  var fileModifier = FileModifier();

  Person(this.information, this.name, this.isStudent);

  void displayInformation() {
    print('Information: $information');
  }

  void printPersonInformation() {
    if (information is List) {
      print('Information is a List:');
      for (var element in information as List) {
        print(element);
      }
    } else if (information is Map) {
      print('Information is a Map:');
      (information as Map).forEach((key, value) {
        print("$key: $value");
      });
    } else if (information is String) {
      print('Information is a String: $information');
    } else {
      print("Unsupported type for information.");
    }
  }
}

//TODO: inside class the printPersonalInformation function body was showing compile time error
/**
 * The key issue is:

The class property information is potentially nullable (T?).
The Dart compiler doesn’t promote the type of fields like it does for local variables, because the value of information could change between the type check (if (information is List)) and its use.

 */
//TODO: T extends two types usecase
/**
 * This means:

T is a generic type parameter constrained to num.
String and bool are unconstrained type parameters that happen to use the names of existing types in Dart. They are not related to the built-in String or bool types.

 */

T calculate<T extends num>(T a, T b, T Function(T, T) operation) {
  return operation(a, b);
}

void calculator() {
  var result = calculate<int>(5, 3, (a, b) => a + b);
  print(result); // 8
  sum(3, 5);
  var resultDouble = calculate<double>(5, 5, (a, b) => a * b);
  print(resultDouble); // 12.00
}

sum(a, b) => a + b;

//  OOP



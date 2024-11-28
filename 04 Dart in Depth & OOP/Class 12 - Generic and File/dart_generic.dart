void main() {
  // printPersonInformation({"Roll": 200, "Name": "Zahidul"});
  // printPersonInformation("No personal Information");
  // printPersonInformation(100);
  // Person aPerson = Person("Str Value");
  // aPerson.displayInformation();
}

void printPersonInformation(dynamic information) {
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

class Person<T extends Information, String> {
  T information;

  Person(this.information);

  displayInformation() {}
}


//TODO: inside class the printPersonalInformation function body was showing compile time error
//TODO: T extends two types usecase

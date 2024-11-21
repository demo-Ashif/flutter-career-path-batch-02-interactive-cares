class Person {
  String? name;
  int? age;
  String? fathersName;

  Person._important() {
    this.name = "Sheikh Hasina";
    this.age = 74;
  }

  static final Person _importantPerson = Person._important();

  factory Person.important() {
    Person aPerson = Person("name", 10, null);
    return aPerson;
  }

  Person(String name, int age, String? fathersName) {
    this.name = name;
    this.age = age;
  }

  Person.withName(String name) {
    this.name = name;
  }

  Person.empty() {
    this.name = "Zahidul";
    this.age = 100;
  }

  Person.fromJson(Json) {}

  printPersonInformation() {
    print("$name $age");
  }
}

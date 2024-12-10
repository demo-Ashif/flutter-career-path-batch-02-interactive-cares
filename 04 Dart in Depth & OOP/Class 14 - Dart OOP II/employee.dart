class Employee {
  String _name;
  double _salary;

  Employee(this._name, this._salary);

  //Getters method
  String get name => _name;
  double get salary => _salary;

  //Setters method
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print('Name cannot be empty!');
    }
  }

  set salary(double newSalary) {
    if (newSalary >= 0) {
      _salary = newSalary;
    } else {
      print('Salary must be positive');
    }
  }

  //Method to display employee details
  void displayDetails() {
    print('Employee: $_name, Salary: \$$_salary');
  }
}

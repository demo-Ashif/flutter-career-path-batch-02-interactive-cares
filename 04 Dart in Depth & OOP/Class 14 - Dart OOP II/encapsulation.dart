import 'person.dart';
import 'employee.dart';

void main() {
  //object initialization
  Person person1 = Person('Zobaer', 25); //instance 1
  Person person2 = Person('Sarowar', 23); //instance 2

  //calling method
  // person1.displayInfo();
  // person2.displayInfo();

  //employee part
  Employee employee1 = Employee('Alice', 5000.0);
  employee1.displayDetails();

  //HR Admin
  // print('Name: ${employee1.name}');
  // print('Salary: \$${employee1.salary}');

  //Chief Finance Officer
  employee1.name = 'Jordan Pele';
  employee1.salary = 6000.0;

  employee1.displayDetails();
}

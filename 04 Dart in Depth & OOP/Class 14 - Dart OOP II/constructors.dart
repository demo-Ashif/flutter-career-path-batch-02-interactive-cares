void main() {
  Car normalCar = Car('Toyota', 'Allion');
  normalCar.displayInfo();

  Car evCar = Car.electric();
  evCar.displayInfo();
}

class Car {
  late String company;
  late String model;

  // Default Constructor
  Car(this.company, this.model);

  //Named constructor
  Car.electric() {
    company = 'Tesla';
    model = 'Model S';
  }

  void displayInfo() {
    print("Car: $company $model");
  }
}

void main() {
  // Creating objects of subclasses
  Vehicle car = Car();
  Vehicle boat = Boat();
  Vehicle plane = Plane();

  car.move();
  car.greet();
  boat.move();
  plane.move();
}

//This is my Interface
abstract class Vehicle {
  //Abstract Method
  void move();

  void greet() {
    print('Say Hello!');
  }
}

//Sub classes//Concrete class
class Car extends Vehicle {
  //Concrete implementation
  @override
  void move() {
    print("Car is moving on roads.");
  }
}

class Boat extends Vehicle {
  @override
  void move() {
    print("Boat is sailing on water.");
  }
}

class Plane extends Vehicle {
  @override
  void move() {
    print("Plane is flying in the sky.");
  }
}

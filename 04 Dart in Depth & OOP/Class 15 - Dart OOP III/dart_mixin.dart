void main() {
  // Bird bird = Bird();
  // bird.fly();
  Plane plane = Plane();
  plane.fly();

  Dog dog = Dog();
  dog.walk();
}

//Bird is a animal
//Airplane is a Vehicle

// what is common? Both can Fly
// Flying is a feature

//MIXINS

mixin Flyable {
  void fly() {
    print('Flying ...');
  }
}

class Bird with Flyable {}

class Plane with Flyable {}

//Animal

class Human with Walk, Talk, Reprduce {}

class Dog with Walk, Reprduce {}

mixin Walk {
  void walk() {
    print('Walking ...');
  }
}

mixin Talk {
  void talk() {
    print('Talking ...');
  }
}

mixin Reprduce {
  void reproduce() {
    print('Reproducing ...');
  }
}

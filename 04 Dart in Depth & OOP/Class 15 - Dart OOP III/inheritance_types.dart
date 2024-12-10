// Three Types
// 1. Single Inheritance
// 2. Multilevel Inheritance
// 3. Hierarchical Inheritance

//WHEN TO USE
// It's a IS A Relationship

void main() {}

// 1. Single Inheritance
class Vehicle {
  void start() {
    print("Vehicle started");
  }
}

class Car extends Vehicle {}

// 2. Multilevel Inheritance
// class Animal { //Parent // Super
//   void breathe() {
//     print("Breathing...");
//   }
// }

// class Mammal extends Animal {}

// class Human extends Mammal {
//   void speak() {
//     print("Speaking...");
//   }
// }

// 3. Hierarchical Inheritance
class Animal {
  void breathe() {
    print("Breathing...");
  }
}

class Mammal {}

class Dog extends Animal {
  void bark() {
    print("Barking...");
  }
}

class Cat extends Animal {
  void meow() {
    print("Meowing...");
  }
}

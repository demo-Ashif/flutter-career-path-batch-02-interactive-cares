class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat meows');
  }
}

void main() {
  Animal animal;

  // Assigning Dog to the Animal reference
  animal = Dog();
  animal.sound(); // Output: Dog barks

  // Assigning Cat to the Animal reference
  animal = Cat();
  animal.sound(); // Output: Cat meows
}

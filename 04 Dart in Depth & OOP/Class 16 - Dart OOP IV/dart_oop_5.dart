//Method Overriding

//Polymorphism**
// -- Compile Time Polymorphism
// -- Run Time Polymorphism

//Abstraction**

void main() {}

//Extends vs Implements

abstract class Scanner {
  void scan();
}

abstract class Photocopy {
  void copy();
}

abstract class Pendrive {
  void save();
}

class OfficePrinter implements Photocopy {
  @override
  void copy() {
    // TODO: implement copy
  }
}

class AdminPrinter implements Photocopy, Scanner {
  @override
  void copy() {
    // TODO: implement copy
  }

  @override
  void scan() {
    // TODO: implement scan
  }
}

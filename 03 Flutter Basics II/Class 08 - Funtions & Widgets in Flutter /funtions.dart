import 'dart:math';

int sum(int left, int right) {
  return left + right;
}

int sub(int left, int right) => left - right;

String greetings([String name = ""]) {
  return "Hello $name";
}

String treeAndFlower({String? flower, required String tree}) {
  return tree + ": " + (flower != null ? flower : "N/A");
}

void main() {
  // for (int i = 1; i <= 10; i++) {
  //   print(sum(i, i + 1));
  // }
  // int summation = sum(2, 3);
  print(sum(100, 88));
  structure(true, false);
  String greeting = greetings();
  print(greeting);
  print(treeAndFlower(tree: "Mango"));
  print(treeAndFlower(tree: "Rose", flower: "Hibiscus"));
  print(square(5));
  var messageFunc = (String printMessage) {
    print(printMessage);
    return 0;
  };
  print(messageFunc("Hello Anonymous"));
  equal(sum, 5, 5);
  equal(sub, 10, 5);
}

// higher order function
void equal(Function operation, int left, int right) {
  var equal = operation(left, right);
  print(equal);
}

// inline or arrow finction
int square(int number) => number * number;

structure(a, b) {
  print("any $a");
  print("instruction $b");
}

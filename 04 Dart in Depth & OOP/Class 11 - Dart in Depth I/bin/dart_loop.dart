void main() {
  //for loop
  for (int i = 1; i >= 100; i++) {
    print('Count: $i');
  }

  //for-in loop
  List<String> fruits = ['Apple', 'Mango', 'Banana', 'Orange'];
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  //while loop
  // int counter = 1;
  // while (counter <= 3) {
  //   print('Hello $counter');
  //   counter++;
  // }

  int counter = 5;
  do {
    print('Executed $counter time(s)');
    counter++;
  } while (counter <= 3);

  //usage of break keyword
  for (int i = 1; i <= 5; i++) {
    if (i == 3) break;
    print('Value: $i');
  }

  //usage of continue keyword
  for (int i = 1; i <= 5; i++) {
    if (i == 1) continue;
    print('Value: $i');
  }
}

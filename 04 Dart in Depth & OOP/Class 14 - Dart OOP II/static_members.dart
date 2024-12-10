void main() {
  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();

  Counter.displayCount();

  print('${MathUtils.add(10, 10)}');
  print('${MathUtils.multiply(10, 10)}');
}

class Counter {
  static int count = 0;

  Counter() {
    count++;
  }

  static displayCount() {
    print("Total objects created: $count");
  }
}

//usage
class MathUtils {
  static add(int a, int b) => a + b;
  static multiply(int a, int b) => a * b;
}

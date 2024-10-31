void main() {
  // numbers declaration and behavior
  var a;
  a = 20;
  print(a);
  a = "Text";
  print(a);
  int b;
  b = 20;
  print(b);
  b = -9223372036854775808;
  print(b.isEven);
  int absValue = -100;
  print(absValue.abs());
  double money = 155;
  print(money);

  // string declarations
  String greeting = 'Hello, Dart!';
  String name = "Zahidul";
  String multiLine = '''
This is
a multi-line
string.''';
  print(greeting);
  print(name);
  print(multiLine);

  // special string
  String jekononam = "Hello \"class\"\nHow are you\tWe\'re good";
  print(jekononam);

  // interpolation or concatenation
  double number = 10;
  String firstName = 'John';
  String lastName = 'Doe';
  String fullName = firstName + ' ' + lastName; // "John Doe"
  String autoConcat = 'Hello' ' ' 'World'; // "Hello World"
  String johnDoeNumber = "$number. $firstName $lastName";
  print(fullName);
  print(autoConcat);
  print(johnDoeNumber);

  // String methods
  String padded = '  Hello  World';
  print(padded.trim()); // "Hello"
  print(fullName.contains('lo'));

  String sentence = 'Hello-World';
  List<String> words = sentence.split('-'); // ["Hello", "World"]
  print(words);

  // Conversion methods
  String helloStr = "123";
  int sum123 = 5 + int.parse(helloStr);
  print(sum123);

  double pi = 3.7;
  int truncated = pi.toInt(); // 3
  int rounded = pi.round(); // 4
  print(truncated);
  print(rounded);

  double value = 0.7;
  print(value.ceil());
  print(value.floor());

  // boolean declaration and operations
  bool t = true;
  bool f = false;

  print(t && f); // false
  print(f || t); // true
  print(!f); // false

  // assigning boolean by running operation between other data types
  int x = 10;
  int y = 20;

  bool isEqual = (x == y); // false
  bool isGreater = (x > y); // false
  bool isLessOrEqual = (x <= y); // true
  print(isEqual);
  print(isGreater);
  print(isLessOrEqual);

  String? nameTwo;
  bool isNull = (nameTwo == null); // true
  print(isNull);
}

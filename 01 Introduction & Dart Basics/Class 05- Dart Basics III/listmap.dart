void main() {
  List<int> nums = [4, 1, 2];
  nums.add(3);
  print(nums.length > 3);
  if (nums.length < 3) {
    print(nums);
  } else {
    nums.removeAt(3);
  }
  print(nums);

  nums.sort();
  print(nums);

  Map<String, int> ages = {}; // Empty map
  Map<String, String> countries = {
    'US': 'United States',
    'CA': 'Canada',
    'FR': 'France'
  };
  print(countries['US']);
  Map<dynamic, dynamic> studentsMap = {
    1: 'Rahman',
    2: 'Debashish',
    10: 'Zahidul'
  };
  print(studentsMap[10]);
  print(studentsMap.keys);
  print(studentsMap.values);
  Map<String, String> additionalCountries = {
    'GB': 'United Kingdom',
    'JP': 'Japan'
  };
  studentsMap.addAll(additionalCountries);
  print(studentsMap);
  studentsMap[10] = 'Shawon';
  print(studentsMap);

  Map<String, Map<String, String>> continents = {
    'North America': {'US': 'United States', 'CA': 'Canada'},
    'Europe': {'FR': 'France', 'DE': 'Germany'}
  };

  print(continents['Europe']?['DE']); // 'France'

  Map<String, int> itemPrices = {'apple': 400, 'banana': 120};
  var discountedPrices =
      itemPrices.map((key, value) => MapEntry(key, value + 10));
// {'apple': 1, 'banana': 0}
  print(discountedPrices);

  String name = "Zahidul";
  if (name.contains("ot")) {
    print("1 - $name");
  } else if (name.contains("not")) {
    print("2 - $name");
  } else {
    print("3 - $name");
  }
  dynamic some = "thing";
  some = 2;
  some = {2: "thing", "three": 100};
  some = [1, 23, 3];
  print(some);
  dynamic number;
  print(number);
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("end");

  List<String> names = ["Alice", "Bob", "Charlie"];
  for (int any in nums) {
    print(any);
  }
  print("start while");
  int count = 1;
  while (count <= 10) {
    int p = 100;
    print(count + p);
    count++;
  }
  print("end while");
  print(count);
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break; // Exits the loop when `i` is 3
    }
    print(i);
  }
  print("broke after 3");
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Skips the rest of the code for this iteration when `i` is 2
    }
    print(i);
  }
  outerLoop:
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (j == 2) {
        break outerLoop; // Exits `outerLoop`
      }
      print("i: $i, j: $j");
    }
  }
}

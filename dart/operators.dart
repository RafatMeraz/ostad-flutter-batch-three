main() {
  int a = 41;
  int b = 2;
  int addition = a + b;
  int subtract = a - b;
  double division = a / b;
  int multipl = a * b;
  int mod = a % b;
  print(addition);
  print(subtract);
  print(division);
  print(multipl);
  print(mod);

  double value = 1;
  //value++; /// value += 1; /// value = value + 1;
  print(value--);
  print(value);
  //value--; /// value -= 1; /// value = value - 1;
  // print(value);

  value = value + 3;
  value += 3;
  value -= 2;
  value *= 4;
  value /= 2;
  print(value);


  int x = 5;
  int y = 7;
  int z = 1;

  print(x == y); // Equal to
  print(x > y); // greater than
  print(x < y); // less than
  print(x >= z); // greater than or equal to
  print('');
  print(x <= z); // less than or equal to
  print(x < y && x < z); // Logical and
  print(x < y || x < z); // logical or

  const String passportNo = '4545Txxxx3e434';
  final int age;
  age = 76;
  print(passportNo);

  /// Type casting
  String myAge = '67';
  int j = int.parse(myAge);
  j += 1;
  print(j);
  myAge = j.toString();
  double u = double.parse(myAge);
  print(u);
}
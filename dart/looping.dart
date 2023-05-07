main() {
  // kotobar er jonno jabo?
  // count koto theke shuru korbo?
  // jete ashle koto bar count barabe?
  //

  // starting(once) ; condition ; increment/decrement
  for (int start = 0; start <= 100; start++) {
    /// SKIP
    if (start == 20) {
      // start += 5;
      continue;
    }
    // niche jabe
    print('niche jabe $start');
    print('Kaj korlam');
    /// BREAK FROM LOOPING
    if (start == 50) {
      break;
    }
  }
  String name = 'Rahim';
  int age = 34;
  String information = 'Name: $name, Age: $age'; // String interpolation
  print(information);
  List<String> students = ['Rafat', 'Mehedi', 'Iram'];

  for (int index = 0; index < students.length; index = index + 1) {
    print('Good morning ${students[index]} ' + students[index]);
  }

  for (String studentName in students) {
    print(studentName);
  }

  /// while / do -- while
}
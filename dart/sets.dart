main() {
  Set<String> students = {
    'Rafat',
    'Sun',
    'moon',
    'Siam',
    'Satil',
    'Rafat',
    'Siam'
  };
  students.add('Rafi');
  students.remove('Satil');
  students.addAll({'sdf', 'dfdf'});
  students.addAll(['sdf', 'kldsjfgkf']);

  print(students);
  print(students.elementAt(2));
  print(students.first);
  print(students.last);
  print(students.length);
  print(students.isEmpty);
  print(students.isNotEmpty);
  students.clear();
  print(students);
  print(students.isEmpty);
  print(students.isNotEmpty);
}

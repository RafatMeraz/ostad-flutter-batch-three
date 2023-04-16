main() {
  List<String> students = [
    'Abdur Rahman',
    'Alex',
    'Abir',
    'Kazi',
    'Mahamudul',
    'Fahad'
  ];
  print(students.length);
  print(students.first);
  print(students.last);
  print(students[3]);
  students.insert(0, '0 Maruf');
  students.insertAll(0, ['0 Maruf', 'asfd']);
  students.add('Maruf');
  print(students);
  students.addAll([
    'XYZ',
    'Tonmoy',
    'Tonmoy',
    'Tonmoy',
  ]);
  print(students);
  students.removeLast();
  print(students);
  students.remove('Tonmoy');
  print(students);
  students.removeAt(1);
  print(students);
}
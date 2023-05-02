main() {
  Map<String, String> user = {
    'FirstName' : 'Rahim',
    'LastName' : 'Rahman',
    'age' : '34',
  };
  Map<int, String> students = {
    1 : 'Rahim',
    2 : 'Karim',
    3 : 'Yusuf',
    40 : 'Nahid'
  };
  Map<String, dynamic> personInfo = {
    'name' : 'Tonmoy',
    'age' : 21,
    'cgpa' : 3.56
  };
  print(user);
  print(user['FirstName']);
  print(user['age']);
  print(students);
  print(students[40]);
  print(personInfo);
  personInfo['university'] = 'UAP';
  print(personInfo);
  print(personInfo.keys);
  print(personInfo.values);
  print(personInfo.length);
  print(personInfo.isNotEmpty);
  print(personInfo.isEmpty);
  personInfo.addAll({'dfd': " dfdf"});
}
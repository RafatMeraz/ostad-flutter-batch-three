main() {
  /// Primitive data types - String, int , double, bool
  /// Data Types
  /// number - decimal/floating
  /// Decimal - 234234324343
  /// Floating - 334.34356
  /// to help a banking application
  int accountHolderAge = 45; // integer
  double totalAmount = 400000; // floating
  /// text / String / multiple characters/letters
  String accountHolderName = 'Rahim Hasan';
  String address = "501/3, 😊😊😊 Boshoti housing, Adalot's para, Tangail";
  String companyName = '''Vivasoft's 

  " Limited''';
  /// String concat
  String con = accountHolderName + ' - ' + address;
  /// true/false
  bool isAccountHolderBangladeshi = true;

  /// phone string - multiple phone num hold
  /// Camel case
  List<String> phoneNumberList = [
    '+88018238498348',
    '+880182384983235',
    '+88018238498348',
    '+88018238498348',
    '+88018238498348',
    '+88018238498348',
    '+88018238498348',
    '+88018238498348',
    '+04954589485489'
  ];
  print(phoneNumberList[5]);
  print(phoneNumberList);

  Map<int, dynamic> students = {
    1 : 'Rahim',
    2 : 'Karim',
    3 : 'Tanmoy',
    4 : 'Roy',
    5 : 'upop',
    5 : 'Shusmoy',
    5 : 'you',
  };

  Map user = {
    'name' : 'User',
    'age' : 43,
    34 : 'Adast45 344'
  };

  print(user['name']);
  print(user[34]);
  print(students[5]);
  print(students);
  print(user);

  print(con);
  print(accountHolderName);
  print(address);
  print(companyName);
  print(totalAmount);
  print(accountHolderAge);
  print(isAccountHolderBangladeshi);

  /// initial
  var userName = 3434;
  String name = 'jahir';
  dynamic accountName = 'Username';

  /// update
  userName = 23432;
  name = 'Rafat';
  accountName = true;
  accountName = false;

}
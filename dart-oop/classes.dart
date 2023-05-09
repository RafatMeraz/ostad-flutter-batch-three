main() {
  // instance / object
  Mobile iPhone6S = Mobile(); // object creation
  iPhone6S.year = 2015; // property access & modify
  iPhone6S.model = 'iPhone 6s Plus';
  print(iPhone6S.year);
  print(iPhone6S.model);

  Mobile xiomi = Mobile();
  xiomi.year = 2019;
  xiomi.model = 'Xoimi X Plus';
  print(xiomi.model);
  print(xiomi.year);
}

// datatype / class
class Mobile {
  late int year;
  late String model;
}
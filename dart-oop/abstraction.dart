/// Rules
/// Reuse
/// Polymorphism
/// hide

abstract class Student {
  void attendClass();

  void eating() {
    print('eating');
  }

  void running() {
    print('running');
  }
}

/// interface
class Person implements Student {
  String name;
  int age;
  Person(this.name, this.age);

  @override
  void attendClass() {
    print('Home');
    print('Eating');
    print('$name is attendning class');
  }

  @override
  void eating() {
    // TODO: implement eating
  }

  @override
  void running() {
    // TODO: implement running
  }
}

class BusinessMan extends Student {
  String org;

  BusinessMan(this.org);

  @override
  void attendClass() {
    print('Owner of $org is doing class');
    print('Lying in bed');
  }
}

main() {
  Person shahir = Person('Shahir', 25);
  shahir.attendClass();
  shahir.eating();
  BusinessMan abc = BusinessMan('Ubi');
  abc.attendClass();
  abc.eating();
  // polymorphism
  // Student, but Person(university pore), Businessman(org)
  Student rafat = Person('name', 34);
  Student tareq = BusinessMan('sadsf');
  BusinessMan sdfd = BusinessMan('sadsf');
  Student h = Person('sdfds', 34);
  h.attendClass();

  print(rafat is Person);

}
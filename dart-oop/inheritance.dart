/// class A -> functionality -> class B

// Parent/Super
class A {
  String name = 'Rafi';
  void add() {
    print('Addition result => ${344 + 4}');
  }

  void subtract() {
    print(34 - 3);
  }
}

class Cat {
  void meow() {
    print('sound');
  }
}

/// Inheritance
// Child
// Dart multiple inheritance not support
class B extends A {

  String name = 'Rafat';

  @override
  void subtract() {
    print('Added from b');
  }

  void divide() {
    print(23 / 4);
    print(this.name);
    print(super.name);
  }

  String returnSuperName() {
    return super.name;
  }
}

class C extends A {}

class D extends B {
  int age = 34;

  void printName() {
    print(super.returnSuperName());
  }
}

main() {
  A a = A();

  B b = B();
  b.divide();
  b.add();
  b.subtract();

  C c = C();
  c.subtract();

  D d = D();
  d.divide();
  d.add();
  d.subtract();
  print(d.age);
  d.printName();
}

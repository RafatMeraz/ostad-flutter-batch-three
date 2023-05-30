class Animal {
  String direction = 'Animal';
  String name;
  String color;
  static int numberOfAnimal = 0;

  // Animal(String name) {
  //   this.name = name;
  // }

  Animal(this.name, this.color) {
    numberOfAnimal++;
  }

  void moving(String direction) {
    print(direction);
    print(this.name);
    this.playing();
  }

  void playing() {
    print('Playing');
  }
}

main() {
  Animal cat = Animal('Cat', 'Black');
  cat.moving('Left');
  print(Animal.numberOfAnimal);
  Animal dog = Animal('Cat', 'Black');
  print(Animal.numberOfAnimal);
}
/// Have to add every where
/// Update redundant
/// Deletion
/// Reusability

/// Main functioner vitore theke call korate hobe
main() {
  welcome();
  print('asfasd');
  print('Bye');
  welcome();
  print('asfasd');
  print('task3');
  print('asfasd');
  print('task8');
  print('Bye');
  welcome();
  print('asfasd');
  print('asfasd');
  print('Gossip');
  print('Bye');
  welcome();
  print('asfasd');
  print('Interview');
  print('Bye');
  welcome();
  addition(12, 34); /// CAll (Function call)
  addition(4, 5); /// CAll (Function call)
  addition(10, 20); /// CAll (Function call)
  welcomeByName('Mehedi');

  int abc = subtract(12, 4);
  print(abc);
  addition(abc, 30);
}

// name, (), {}
void welcome() {
  print('Hello, Rohan');
  print('Have a seat');
}

void welcomeByName(String name) {
  print('Hello, $name');
  print('Have a seat');
}

// Parameter
void addition(int numOne, int numTwo) {
  int result = numOne + numTwo;
  print('Result is $result');
}

/// Return type
int subtract(int a, int b) {
  int result = a - b;
  return result;
}
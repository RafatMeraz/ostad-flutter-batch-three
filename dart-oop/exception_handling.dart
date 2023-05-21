import 'dart:async';
import 'dart:io';

main() {
  try {
    sum(1, 5);
  } on SocketException {
    print('socket exception');
  } on TimeoutException {
    print('timeout');
  } catch (e) {
    print(e);
  }
  // sum(1, 5);
  try {
    Student jihad = Student();
    // jihad.name = 'Jihad';
    print(jihad.name);
  } catch (error) {
    print(error);
  } finally {
    print('Student object created');
  }

  print('Rafat');
  print('sdfsadf');
}

void sum(int a, int b) {
  throw TimeoutException('dsfd');
  // throw SocketException('Socket exception');
  // throw Exception('Custom exception');
  print(a + b);
}

class Student {
  late String name;
  late String university;
}
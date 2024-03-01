import 'dart:convert';
import 'dart:io';

class ClassA {
  int a;
  int b;

  ClassA(this.a, this.b);

  void display() {
    print("Nilai a: $a");
  }
}

void main() {
  stdout.write("Masukkan nilai a: ");
  int inputA = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan nilai b: ");
  int inputB = int.parse(stdin.readLineSync()!);

  ClassA obj = ClassA(inputA, inputB);
  obj.display();
}

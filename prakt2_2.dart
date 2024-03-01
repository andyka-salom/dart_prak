import 'dart:convert';
import 'dart:io';

class ClassAB {
  int a;
  int b;

  ClassAB(this.a, this.b);

  void display() {
    print("Nilai a: $a");
    print("Nilai b: $b");
  }

  int add() {
    return a + b;
  }
}

void main() {
  stdout.write("Masukkan nilai a: ");
  int inputA = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan nilai b: ");
  int inputB = int.parse(stdin.readLineSync()!);

  ClassAB obj = ClassAB(inputA, inputB);
  obj.display();
  print("Hasil penjumlahan: ${obj.add()}");
}

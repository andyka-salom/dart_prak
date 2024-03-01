import 'dart:convert';
import 'dart:io';

class ClassABC {
  int a;
  int b;
  String c;

  ClassABC(this.a, this.b, this.c);

  ClassABC.named(this.a, {this.b = 0, this.c = "string di ClassABC"});

  void display() {
    print("Nilai a: $a");
    print("Nilai b: $b");
    print("Nilai c: $c");
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

  stdout.write("Masukkan nilai c: ");
  String inputC = stdin.readLineSync()!;

  ClassABC obj1 = ClassABC(inputA, inputB, inputC);
  obj1.display();
  print("Hasil penjumlahan: ${obj1.add()}");

  ClassABC obj2 = ClassABC.named(inputA, c: inputC);
  obj2.display();
  print("Hasil penjumlahan: ${obj2.add()}");
}

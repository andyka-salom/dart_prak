import 'dart:io';

abstract class AbstractClass {
  int variable;

  AbstractClass(this.variable);

  void abstractMethod1();
  void abstractMethod2();
}

class BaseClass extends AbstractClass {
  BaseClass(int variable) : super(variable);

  @override
  void abstractMethod1() {
    print("Implementation of abstractMethod1");
  }

  @override
  void abstractMethod2() {
    print("Implementation of abstractMethod2");
  }
}

void main() {
  stdout.write("Masukkan nilai variabel: ");
  int inputVariable = int.parse(stdin.readLineSync()!);

  BaseClass obj = BaseClass(inputVariable);
  obj.abstractMethod1();
  obj.abstractMethod2();
}

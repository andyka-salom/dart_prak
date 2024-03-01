import 'dart:convert';
import 'dart:io';

mixin A {
  void methodA() {
    print("Method from mixin A");
  }
}

mixin B {
  void methodB() {
    print("Method from mixin B");
  }
}

class C with A, B {
  void methodC() {
    print("Method from class C");
  }
}

void main() {
  C obj = C();
  obj.methodA();
  obj.methodB();
  obj.methodC();
}

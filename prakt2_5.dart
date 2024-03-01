
abstract class MyInterface {
  void method1();
  void method2();
}

class MyClass implements MyInterface {
  @override
  void method1() {
    print("Implementation of method1");
  }

  @override
  void method2() {
    print("Implementation of method2");
  }
}

void main() {
  MyClass obj = MyClass();
  obj.method1();
  obj.method2();
}

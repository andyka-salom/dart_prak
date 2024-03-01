
mixin Flyable {
  void fly() {
    print("Flying...");
  }
}

mixin Swimable {
  void swim() {
    print("Swimming...");
  }
}

class Bird with Flyable {
  String name;

  Bird(this.name);
}
class Fish with Swimable {
  String name;

  Fish(this.name);
}

void main() {

  var bird = Bird("Sparrow");
  var fish = Fish("Goldfish");

  bird.fly();

  fish.swim();
}

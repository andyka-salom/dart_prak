import 'dart:io';

abstract class Shape {
  void draw(); 
  double area();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);
  @override
  void draw() {
    print("Gambar persegi panjang dengan panjang $length dan lebar $width");
  }

  @override
  double area() {
    return length * width;
  }

  void display() {
    print("Panjang: $length");
    print("Lebar: $width");
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print("Gambar lingkaran dengan jari-jari $radius");
  }
  @override
  double area() {
    return 3.14 * radius * radius;
  }
  void display() {
    print("Jari-jari: $radius");
  }
}

void main() {
  print("Masukkan panjang persegi panjang:");
  double length = double.parse(stdin.readLineSync()!);

  print("Masukkan lebar persegi panjang:");
  double width = double.parse(stdin.readLineSync()!);

  var rectangle = Rectangle(length, width);
  print("Persegi Panjang:");
  rectangle.draw(); 
  print("Luas: ${rectangle.area()}"); 
  rectangle.display(); 
  print("");

  print("Masukkan jari-jari lingkaran:");
  double radius = double.parse(stdin.readLineSync()!);

  var circle = Circle(radius);
  print("Lingkaran:");
  circle.draw(); 
  print("Luas: ${circle.area()}"); 
  circle.display(); 
}

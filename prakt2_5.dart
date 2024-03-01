// a. Interface dengan 2 method abstract
abstract class Vehicle {
  void start(); 
  void stop(); 
}

class Car implements Vehicle {
  String brand;
  bool isRunning;

  // Constructor
  Car(this.brand, this.isRunning);

  @override
  void start() {
    if (!isRunning) {
      print("$brand is starting...");
      isRunning = true;
    } else {
      print("$brand is already running.");
    }
  }

  @override
  void stop() {
    if (isRunning) {
      print("$brand is stopping...");
      isRunning = false;
    } else {
      print("$brand is already stopped.");
    }
  }

  void displayStatus() {
    if (isRunning) {
      print("$brand is currently running.");
    } else {
      print("$brand is currently stopped.");
    }
  }
}

void main() {
  var myCar = Car("Toyota", false);

  myCar.start();
  myCar.displayStatus();
  myCar.stop();
  myCar.displayStatus();
}

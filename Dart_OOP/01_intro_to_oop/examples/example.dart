// ============================================
// 01 — Intro to OOP | Example
// ============================================
// This example shows the difference between
// procedural and OOP approaches.
// ============================================

// --- Procedural Approach ---
void proceduralExample() {
  print("=== Procedural Approach ===");

  String carBrand = "Toyota";
  String carColor = "Red";
  int carSpeed = 0;

  // Functions are separate from data
  print("Car: $carBrand ($carColor)");
  print("Speed: $carSpeed km/h");

  carSpeed = 60;
  print("Accelerating... Speed: $carSpeed km/h");
}

// --- OOP Approach ---
class Car {
  String brand = "Toyota";
  String color = "Red";
  int speed = 0;

  void displayInfo() {
    print("Car: $brand ($color)");
    print("Speed: $speed km/h");
  }

  void accelerate() {
    speed += 20;
    print("Accelerating... Speed: $speed km/h");
  }

  void brake() {
    speed -= 10;
    if (speed < 0) speed = 0;
    print("Braking... Speed: $speed km/h");
  }
}

void main() {
  proceduralExample();

  print("");
  print("=== OOP Approach ===");

  Car myCar = Car();
  myCar.displayInfo();
  myCar.accelerate();
  myCar.accelerate();
  myCar.brake();
}

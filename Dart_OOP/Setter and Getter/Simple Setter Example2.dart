class Person {
  int _age = 0;

  set age(int value) {
    if (value >= 0 && value <= 150) {
      _age = value;
    } else {
      print("Invalid age! Must be between 0 and 150.");
      _age = 0;
    }
  }

  int get age => _age;
}

void main() {
  Person p = Person();
  p.age = 25;   // ✅ Valid
  p.age = -10;  // ❌ Invalid — prints error
  p.age = 200;  // ❌ Invalid — prints error
  print(p.age); // 25 (unchanged)
}
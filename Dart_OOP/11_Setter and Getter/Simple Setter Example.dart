class Student {
  String _name = "";

  // Setter with validation
  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value.trim();
    } else {
      print("Name cannot be empty!");
    }
  }

  String get name => _name;
}

void main() {
  Student s = Student();
  s.name = "Ahmed";  // ✅ Works
  print(s.name);     // Ahmed

  s.name = "";       // ❌ Shows error message
}
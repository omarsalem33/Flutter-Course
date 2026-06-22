class Student {
  String? name;
  int? age;

  Student(String? name, int? age) : this.name = name, this.age = age;

  // Student(this.name, this.age){
  //   print('Constructor called: Name: $name, Age: $age');
  // }

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

// A constructor is a special method that is automatically called when you create a new object.
// Its job is to initialize (set up) the object's attributes.

# 05 — Objects Part Two | Exercises

## Exercise 1: Predict the Output
What will this code print?

```dart
class Box {
  String label = "";
  int size = 0;
}

void main() {
  Box box1 = Box();
  box1.label = "A";
  box1.size = 10;

  Box box2 = box1;
  box2.label = "B";

  Box box3 = Box();
  box3.label = "C";
  box3.size = 30;

  print(box1.label);
  print(box2.label);
  print(box3.label);
  print(identical(box1, box2));
  print(identical(box1, box3));
}
```

Your answers:
```
Line 1: ___
Line 2: ___
Line 3: ___
Line 4: ___
Line 5: ___
```

---

## Exercise 2: Reference vs New Object
For each scenario, will modifying `b` change `a`? Write YES or NO:

```dart
// Scenario 1
Student a = Student();
Student b = a;
b.name = "Changed";
// Does a.name change? ___

// Scenario 2
Student a = Student();
Student b = Student();
b.name = "Changed";
// Does a.name change? ___

// Scenario 3
Student a = Student();
a.name = "Ahmed";
Student b = a;
Student c = b;
c.name = "Sara";
// Does a.name change? ___
```

---

## Exercise 3: Objects in a List
Given this class:
```dart
class Task {
  String title = "";
  bool isDone = false;
}
```

Write code to:
1. Create 3 Task objects with different titles
2. Add them to a List
3. Mark the second task as done
4. Loop through the list and print each task's title and status

```dart
void main() {
  // YOUR CODE HERE
}
```

---

## Exercise 4: Pass Object to Function
Write a function called `promote` that takes a `Student` object and increases their GPA by 0.1 (max 4.0).

```dart
class Student {
  String name = "";
  double gpa = 0.0;
}

void promote(Student student) {
  // YOUR CODE HERE
}

void main() {
  Student s = Student();
  s.name = "Ahmed";
  s.gpa = 3.5;

  print("Before: ${s.gpa}");
  promote(s);
  print("After: ${s.gpa}");
}
```

---

## Exercise 5: True or False
1. `Student b = a;` creates a new Student object. ( )
2. Objects in a List are stored by reference. ( )
3. `identical(a, b)` checks if both have the same values. ( )
4. Changing an object through one reference affects all references to it. ( )
5. `Student? s;` means s starts as null. ( )

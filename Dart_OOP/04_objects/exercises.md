# 04 — Objects | Exercises

## Exercise 1: Create Objects
Given this class:
```dart
class Animal {
  String name = "";
  String type = "";
  int age = 0;
  bool isWild = false;
}
```

Create 3 different Animal objects and set their attributes:
```dart
void main() {
  // Object 1: A domestic cat named "Mimi", age 3
  // YOUR CODE HERE

  // Object 2: A wild lion named "Simba", age 7
  // YOUR CODE HERE

  // Object 3: A domestic dog named "Buddy", age 2
  // YOUR CODE HERE

  // Print all animals' info
  // YOUR CODE HERE
}
```

---

## Exercise 2: Fix the Errors
Find and fix the errors in this code:

```dart
class Product {
  String name = "";
  double price = 0.0;
  int quantity = 0;
}

void main() {
  Product item1 = Product;
  item1.Name = "Laptop";
  item1.price = 999.99
  item1.quantity = 5;

  print(Product.name);
  print(item1.price);
}
```

Write the corrected code below:
```dart
// YOUR CORRECTED CODE HERE
```

---

## Exercise 3: Dot Notation Practice
Given this object:
```dart
class City {
  String name = "";
  String country = "";
  int population = 0;
  double area = 0.0;
  bool isCapital = false;
}
```

Write code to:
1. Create a City object for Cairo
2. Set all 5 attributes
3. Print each attribute on its own line

```dart
void main() {
  // YOUR CODE HERE
}
```

---

## Exercise 4: True or False
1. Every object must be created from a class. ( )
2. Two objects from the same class share the same data. ( )
3. You use the dot operator to access attributes. ( )
4. `Student()` creates a new Student object. ( )
5. You can change an object's attribute after creating it. ( )

---

## Exercise 5: Read the Output
What will this code print?

```dart
class Counter {
  int value = 0;
}

void main() {
  Counter c1 = Counter();
  Counter c2 = Counter();

  c1.value = 10;
  c2.value = 20;

  c1.value = c1.value + 5;

  print(c1.value);
  print(c2.value);
}
```

Your answer:
```
Line 1: ___
Line 2: ___
```

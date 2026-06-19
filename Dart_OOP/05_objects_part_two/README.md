# 05 — Objects Part Two

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand object references in memory
- Assign objects to variables and understand what happens
- Use objects as function parameters
- Store objects in Lists
- Compare objects

---

## 📖 Object References

When you create an object, Dart stores it in **memory** and gives you a **reference** (pointer) to it. The variable doesn't hold the object itself — it holds the **address** of where the object lives in memory.

```
Variable          Memory
┌──────────┐     ┌──────────────────┐
│ student1  │────▶│  name = "Ahmed" │
│ (address) │     │  age = 20       │
└──────────┘     └──────────────────┘
```

---

## 🔗 Assigning Objects to Variables

When you assign one object variable to another, you copy the **reference** (address), NOT the object itself. Both variables point to the **same object**:

```dart
class Student {
  String name = "";
  int age = 0;
}

void main() {
  Student student1 = Student();
  student1.name = "Ahmed";
  student1.age = 20;

  // student2 points to the SAME object as student1
  Student student2 = student1;

  // Changing student2 ALSO changes student1!
  student2.name = "Sara";

  print(student1.name); // Output: Sara  (changed!)
  print(student2.name); // Output: Sara
}
```

### Visual Explanation

```
Before: student2 = student1

student1 ────▶ ┌────────────────┐
               │ name = "Ahmed" │ ◀──── student2
               │ age = 20       │
               └────────────────┘
Both point to the SAME object!

After: student2.name = "Sara"

student1 ────▶ ┌────────────────┐
               │ name = "Sara"  │ ◀──── student2
               │ age = 20       │
               └────────────────┘
```

---

## 🆚 Reference Copy vs New Object

### Same reference (shared object)
```dart
Student a = Student();
a.name = "Ahmed";

Student b = a; // b and a share the same object
b.name = "Khalid";

print(a.name); // Khalid — both changed!
```

### New independent object
```dart
Student a = Student();
a.name = "Ahmed";

Student b = Student(); // NEW object
b.name = "Khalid";

print(a.name); // Ahmed — a is NOT affected
```

---

## 📦 Objects in Lists

You can store objects in a `List`, just like any other data type:

```dart
class Fruit {
  String name = "";
  String color = "";
  double price = 0.0;
}

void main() {
  Fruit apple = Fruit();
  apple.name = "Apple";
  apple.color = "Red";
  apple.price = 1.50;

  Fruit banana = Fruit();
  banana.name = "Banana";
  banana.color = "Yellow";
  banana.price = 0.75;

  Fruit orange = Fruit();
  orange.name = "Orange";
  orange.color = "Orange";
  orange.price = 2.00;

  // Store objects in a List
  List<Fruit> fruits = [apple, banana, orange];

  // Loop through the list
  for (Fruit fruit in fruits) {
    print("${fruit.name} (${fruit.color}) - \$${fruit.price}");
  }
}
```

---

## 🔄 Objects as Function Parameters

Objects can be passed to functions. Since they're passed by **reference**, the function can modify the original object:

```dart
class BankAccount {
  String owner = "";
  double balance = 0.0;
}

void deposit(BankAccount account, double amount) {
  account.balance += amount;
  print("Deposited \$$amount. New balance: \$${account.balance}");
}

void displayAccount(BankAccount account) {
  print("Owner: ${account.owner}");
  print("Balance: \$${account.balance}");
}

void main() {
  BankAccount myAccount = BankAccount();
  myAccount.owner = "Ahmed";
  myAccount.balance = 1000.0;

  displayAccount(myAccount);
  deposit(myAccount, 500.0);
  displayAccount(myAccount); // Balance changed to 1500.0!
}
```

---

## 🔍 Checking if Two References are the Same

Use `identical()` to check if two variables point to the **same object** in memory:

```dart
void main() {
  Student a = Student();
  Student b = a;       // Same object
  Student c = Student(); // Different object

  print(identical(a, b)); // true  — same object
  print(identical(a, c)); // false — different objects
}
```

---

## 📊 Null and Objects

A variable can be declared without creating an object. In Dart (with null safety), you must explicitly mark it as nullable:

```dart
void main() {
  Student? student; // nullable — starts as null

  print(student); // null — no object yet

  student = Student();
  student.name = "Ahmed";

  print(student.name); // Ahmed — now it has an object
}
```

---

## 💡 Key Takeaways

1. Variables hold **references** (addresses) to objects, not the objects themselves
2. Assigning one object variable to another **shares the reference** — both point to the same object
3. Use `ClassName()` to create a **new independent object**
4. Objects can be stored in **Lists** and passed to **functions**
5. Use `identical()` to check if two variables reference the same object
6. Objects passed to functions are passed **by reference** — the function can modify the original

---

## ➡️ Next Lesson
[06 — Methods](../06_methods/)

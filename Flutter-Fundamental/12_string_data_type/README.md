# 12 — String Data Type

## 🎯 Learning Objectives
- Create and manipulate String values
- Use essential String methods and properties
- Understand multi-line strings and raw strings

---

## 📖 What is a String?

A **String** is a sequence of characters (text). In Dart, Strings are enclosed in **single** or **double** quotes.

```dart
String s1 = "Hello, World!";
String s2 = 'Dart is awesome!';
```

---

## 🔧 String Properties & Methods

### Properties
```dart
String name = "Ahmed Ali";

print(name.length);         // 9  (number of characters)
print(name.isEmpty);        // false
print(name.isNotEmpty);     // true
```

### Common Methods
```dart
String text = "Hello, Dart!";

// Case
print(text.toUpperCase());      // HELLO, DART!
print(text.toLowerCase());      // hello, dart!

// Search
print(text.contains("Dart"));   // true
print(text.startsWith("Hello")); // true
print(text.endsWith("!"));      // true
print(text.indexOf("Dart"));    // 7 (position)

// Modify
print(text.replaceAll("Dart", "Flutter")); // Hello, Flutter!
print(text.trim());             // removes spaces from both ends

// Split & Join
List<String> words = text.split(", ");
print(words);   // [Hello, Dart!]

// Substring
print(text.substring(0, 5));   // Hello
```

---

## 🔗 String Concatenation

### Using `+`
```dart
String firstName = "Ahmed";
String lastName = "Mohamed";
String fullName = firstName + " " + lastName;
print(fullName);   // Ahmed Mohamed
```

### Using interpolation (preferred)
```dart
String fullName = "$firstName $lastName";
print(fullName);   // Ahmed Mohamed
```

---

## 📄 Multi-line Strings

Use triple quotes for multi-line text:
```dart
String poem = """
Roses are red,
Violets are blue,
Dart is great,
And so are you!
""";
print(poem);
```

---

## 🔤 Raw Strings

Add `r` before quotes to ignore escape characters:
```dart
String path = r"C:\Users\Ahmed\Documents";
// Without r: C:\Users\Ahmed\Documents  (\U and \D would be escape chars)
// With r: prints exactly as written
print(path);
```

---

## 🔄 String to Number Conversions

```dart
// String → int
String numStr = "42";
int num = int.parse(numStr);
print(num + 8);   // 50

// String → double
String decStr = "3.14";
double pi = double.parse(decStr);

// int → String
int age = 17;
String ageStr = age.toString();
print("Age: " + ageStr);  // Age: 17
```

---

## ➡️ Next Lesson
[13 — int Data Type](../13_int_data_type/)

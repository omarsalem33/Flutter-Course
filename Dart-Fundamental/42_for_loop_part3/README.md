# 42 — For Loop Part Three

## 🎯 Learning Objectives
- Use labeled loops with `break` and `continue`
- Understand common loop patterns
- Work with String characters using loops
- Solve problems using for loops

---

## 📖 Labeled Loops

Labels let you `break` or `continue` an **outer loop** from inside an inner loop:

```dart
outerLoop:
for (int i = 0; i < 3; i++) {
  for (int j = 0; j < 3; j++) {
    if (i == 1 && j == 1) {
      break outerLoop;  // breaks the OUTER loop
    }
    print("i=$i, j=$j");
  }
}
// Output:
// i=0, j=0
// i=0, j=1
// i=0, j=2
// i=1, j=0
```

Without the label, `break` would only exit the inner loop.

---

## 🔤 Looping Through String Characters

```dart
String word = "DART";

for (int i = 0; i < word.length; i++) {
  print("Character $i: ${word[i]}");
}
// Character 0: D
// Character 1: A
// Character 2: R
// Character 3: T
```

### Count vowels:
```dart
String text = "Hello Dart Programming";
int vowelCount = 0;
String vowels = "aeiouAEIOU";

for (int i = 0; i < text.length; i++) {
  if (vowels.contains(text[i])) {
    vowelCount++;
  }
}

print("Vowels: $vowelCount");  // Vowels: 6
```

---

## 🧩 Common Loop Patterns

### Pattern 1: Find and Return
```dart
List<int> numbers = [4, 8, 15, 16, 23, 42];
int target = 16;
int index = -1;

for (int i = 0; i < numbers.length; i++) {
  if (numbers[i] == target) {
    index = i;
    break;
  }
}

print(index != -1 ? "Found at index $index" : "Not found");
```

### Pattern 2: Transform Each Element
```dart
List<int> prices = [100, 200, 300, 400];
List<int> discounted = [];

for (int i = 0; i < prices.length; i++) {
  discounted.add((prices[i] * 0.9).toInt());  // 10% off
}

print(discounted);  // [90, 180, 270, 360]
```

### Pattern 3: Pair Comparison
```dart
List<int> values = [5, 3, 8, 1, 9, 2];
bool isSorted = true;

for (int i = 0; i < values.length - 1; i++) {
  if (values[i] > values[i + 1]) {
    isSorted = false;
    break;
  }
}

print("Sorted: $isSorted");  // Sorted: false
```

---

## 🔄 Reverse a String

```dart
String original = "Dart";
String reversed = "";

for (int i = original.length - 1; i >= 0; i--) {
  reversed += original[i];
}

print(reversed);  // traD
```

---

## 💡 Real-World Example

```dart
void main() {
  // Find duplicate values in a list
  List<int> data = [3, 7, 2, 3, 8, 7, 1];
  List<int> duplicates = [];

  outer:
  for (int i = 0; i < data.length; i++) {
    // Skip if already found as duplicate
    for (int d = 0; d < duplicates.length; d++) {
      if (duplicates[d] == data[i]) continue outer;
    }

    // Check for duplicates
    for (int j = i + 1; j < data.length; j++) {
      if (data[i] == data[j]) {
        duplicates.add(data[i]);
        break;
      }
    }
  }

  print("Duplicates: $duplicates");  // Duplicates: [3, 7]
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Labeled break | `break labelName;` exits the named loop |
| Labeled continue | `continue labelName;` skips in the named loop |
| String indexing | `str[i]` gets character at index i |
| `str.length` | Number of characters in string |
| Find pattern | Loop + condition + break |
| Transform pattern | Loop + new list + add |

# 06 — Methods | Tasks

## Task 1: Temperature Converter
Create a class `TemperatureConverter` with methods:
1. `double celsiusToFahrenheit(double celsius)` — converts C to F
2. `double fahrenheitToCelsius(double fahrenheit)` — converts F to C
3. `String classify(double celsius)` — returns "Cold" (<15), "Warm" (15-30), or "Hot" (>30)
4. `void displayConversion(double celsius)` — prints both values and classification

Test with multiple temperatures.

---

## Task 2: Student Grade System
Create a `Student` class with:
- Attributes: name, grades (List<int>)
- Methods:
  1. `void addGrade(int grade)` — adds grade (only if 0-100)
  2. `double getAverage()` — returns average of all grades
  3. `int getHighest()` — returns highest grade
  4. `int getLowest()` — returns lowest grade
  5. `String getLetterGrade()` — returns A (90+), B (80+), C (70+), D (60+), F (<60) based on average
  6. `void printReport()` — prints full report

Create 3 students, add grades, and print reports.

---

## Task 3: Shopping Cart
Create a `ShoppingCart` class with:
- Attribute: items (List of product names), prices (List of doubles)
- Methods:
  1. `void addItem(String name, double price)` — adds an item
  2. `void removeItem(String name)` — removes an item
  3. `double getTotal()` — returns total price
  4. `int getItemCount()` — returns number of items
  5. `void applyDiscount(double percent)` — reduces all prices by percentage
  6. `void displayCart()` — prints all items and total

Simulate a shopping session with adding, removing, and discounting items.

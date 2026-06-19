# 07 — Constructors | Tasks

## Task 1: Movie Database
Create a `Movie` class with a constructor that takes: title, director, year, rating (double), and genre.

Then:
1. Create a List of at least 5 movies
2. Print all movies in a formatted table
3. Find and print the highest-rated movie
4. Print all movies from a specific genre

---

## Task 2: Constructor Comparison
Create a `Contact` class in THREE different ways:
1. With no constructor (using default values)
2. With positional parameters
3. With named parameters

Show how to create an object with each version. Which is most readable?

```dart
// Version 1: No constructor


// Version 2: Positional parameters


// Version 3: Named parameters

```

---

## Task 3: Simple Inventory System
Create a `Product` class with constructor (name, price, stock).
Add methods:
- `void sell(int quantity)` — reduces stock (if enough available)
- `void restock(int quantity)` — increases stock
- `double totalValue()` — returns price × stock
- `void display()` — prints product info

Create 5 products, simulate selling and restocking, and print a final inventory report with total value.

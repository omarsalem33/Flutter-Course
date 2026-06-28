import 'Class.dart';
import 'dart:io';

void main() {
  Book book1 = Book("Clean Code", "Robert martin");
  Book book2 = Book("Dart Programming", "Goolge");
  Book book3 = Book("OOP Concepts", "Ali");

  Member Ahmed = Member("Ahmed", 101);

  Library library = Library();

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  print("----------------------------------");
  Ahmed.showRole();
  print("----------------------------------");
  library.showBooks();
  print("----------------------------------");
  library.borrowBook("Clean Code", Ahmed);
  print("----------------------------------");
  library.showBooks();
  print("----------------------------------");
  Ahmed.showBorrowedBBooks();

  Member Alaa = Member("Alaa", 102);

  library.borrowBook("Clean Code", Alaa);

  library.returnBook("Clean Code", Ahmed);

  library.borrowBook("Clean Code", Alaa);
}

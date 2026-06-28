class Book {
  late String title;
  late String author;
  late bool isAvilable;

  Book(this.title, this.author, {this.isAvilable = true});

  void displayInfo() {
    print("Title: $title | Author: $author | Available : $isAvilable ");
  }
}

abstract class Person {
  String name;
  Person(this.name);

  void showRole();
}

class Member extends Person {
  int memberId;
  List<Book> borrowBooks = [];

  Member(String name, this.memberId) : super(name);

  @override
  void showRole() {
    print("$name is library member");
  }

  void showBorrowedBBooks() {
    if (borrowBooks.isEmpty)
      print("$name has no borrowed Books");
    else {
      print("$name Borrowed");
      for (var book in borrowBooks) print(book.title);
    }
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("${book.title} added");
  }

  void showBooks() {
    print("\nLibrary Books: ");
    for (var x in books) {
      x.displayInfo();
    }
  }

  void borrowBook(String title, Member member) {
    try {
      Book book = books.firstWhere((b) => b.title == title);

      if (book.isAvilable) {
        book.isAvilable = false;
        member.borrowBooks.add(book);
        print("${member.name} borrowed ${book.title}");
      } else {
        print("${book.title} is not available");
      }
    } catch (e) {
      print("Book no found");
    }
  }

  void returnBook(String title, Member member) {
    Book book = member.borrowBooks.firstWhere((b) => b.title == title);
    book.isAvilable = true;
    member.borrowBooks.remove(book);
    print("${member.name} returned ${book.title}");
  }
}

import 'dart:io';

class Book {
  String title;
  String author;
  bool available;

  Book(this.title, this.author, this.available);
}

List<Book> libraryCatalog = [];

void addBook(String title, String author) {
  Book newBook = Book(title, author, true);
  libraryCatalog.add(newBook);
  print('Book added successfully: $title by $author');
}

void displayCatalog() {
  print('Library Catalog:');
  for (var book in libraryCatalog) {
    print(
        '${book.title} by ${book.author} - ${book.available ? "Available" : "Checked Out"}');
  }
}

void checkoutBook(String title) {
  Book selectedBook = libraryCatalog.firstWhere(
    (book) => book.title == title,
    orElse: () => Book('', '', false),
  );

  if (selectedBook.available) {
    selectedBook.available = false;
    print('Book checked out successfully: $title');
  } else {
    print('Sorry, the book "$title" is already checked out or not found.');
  }
}

void main() {
  while (true) {
    print('\nLibrary System Menu:');
    print('1. Add Book');
    print('2. Display Catalog');
    print('3. Checkout Book');
    print('4. Exit');

    stdout.write('Enter your choice (1-4): ');
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        stdout.write('Enter the title of the book: ');
        String title = stdin.readLineSync() ?? '';
        stdout.write('Enter the author of the book: ');
        String author = stdin.readLineSync() ?? '';
        addBook(title, author);
        break;

      case '2':
        displayCatalog();
        break;

      case '3':
        stdout.write('Enter the title of the book to checkout: ');
        String checkoutTitle = stdin.readLineSync() ?? '';
        checkoutBook(checkoutTitle);
        break;

      case '4':
        print('Exiting the Library System. Goodbye!');
        exit(0);

      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}

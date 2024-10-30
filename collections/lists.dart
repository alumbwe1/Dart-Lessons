import 'dart:io';

List<String> shoppingList = [];

void main() {
  while (true) {
    print('\nShopping List Menu:');
    print('1. Add Item');
    print('2. View Items');
    print('3. Remove Item');
    print('4. Exit');

    stdout.write('Enter your choice (1-4): ');
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        addItem();
        break;

      case '2':
        viewItems();
        break;

      case '3':
        removeItem();
        break;

      case '4':
        print('Exiting the Shopping List App. Goodbye!');
        exit(0);

      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}

void addItem() {
  stdout.write('Enter the name of the item: ');
  String itemName = stdin.readLineSync() ?? '';
  shoppingList.add(itemName);
  print('Item added successfully: $itemName');
}

void viewItems() {
  if (shoppingList.isEmpty) {
    print('Shopping list is empty.');
  } else {
    print('Shopping List:');
    for (var i = 0; i < shoppingList.length; i++) {
      print('${i + 1}. ${shoppingList[i]}');
    }
  }
}

void removeItem() {
  viewItems();
  if (shoppingList.isNotEmpty) {
    stdout.write('Enter the index of the item to remove: ');
    int index = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (index >= 0 && index < shoppingList.length) {
      String removedItem = shoppingList.removeAt(index);
      print('Item removed successfully: $removedItem');
    } else {
      print('Invalid index. No item removed.');
    }
  }
}

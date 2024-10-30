import 'dart:convert';
import 'dart:io';

class Product {
  String name;
  String description;
  var price;
  var expire;
  bool isAvailable;
  Product(
      this.name, this.description, this.price, this.expire, this.isAvailable);
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'expire': expire,
      'availabe': isAvailable,
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
        json['name'] ?? '',
        json['description'] ?? '',
        json['price'] ?? '',
        json['expire'] ?? '',
        json['isAvailable'] ?? false);
  }
}

List<Product> products = [];
void main() async {
  print('Alumbwe Shop');
  await loadProducts();
  showMenu();
}

void showMenu() {
  print('\nMenu');
  print('1. Add Products');
  print('2. View Products');
  print('3. Mark as UnAvailable');
  print('4.Exit');

  String choice = getUserInput('Enter your chice: ');
  switch (choice) {
    case '1':
      addProduct();
      break;
    case '2':
      viewProducts();
      break;
    case '3':
      markAsAvailable();
      break;
    case '4':
      saveProducts(); // Save tasks to the file and exit
      exit(0);
      // ignore: dead_code
      break;
    default:
      print('Invalid response');
      showMenu();
  }
}

String getUserInput(String prompt) {
  print(prompt);
  return stdin.readLineSync()!;
}

void addProduct() {
  String name = getUserInput('Enter Product name: ');
  String description = getUserInput('Enter product description:');
  var price = getUserInput('Enter product price: ');
  var expire = getUserInput('Enter expire  date:');
  products.add(Product(name, description, price, expire, true));
  print('Added successfully');
  showMenu();
}

void viewProducts() {
  if (products.isEmpty) {
    print('No products available');
  } else {
    for (int i = 0; i < products.length; i++) {
      print(
          '${i + 1}. Name: ${products[i].name} Description:${products[i].description}- Expire Date: ${products[i].expire} Availability:(${products[i].isAvailable ? 'Available' : 'NotAvailable'})');
    }
  }
  showMenu();
}

void markAsAvailable() {
  if (products.isEmpty) {
    print('No products is available');
  } else {
    viewProducts();
    int index = int.parse(
            getUserInput('Enter number of products to mark as Available')) -
        1;
    if (index >= 0 && index > products.length) {
      products[index].isAvailable = true;
      print('Product marked as Unavailable.');
    } else {
      print('Invalid product number.');
    }
  }
  showMenu();
}

Future<void> loadProducts() async {
  try {
    File file = File('products.json');
    if (file.existsSync()) {
      String content = await file.readAsStringSync();
      List<Map<String, dynamic>> jsonProducts = json.decode(content);
      products = jsonProducts.map((json) => Product.fromJson(json)).toList();
    }
  } catch (e) {
    print('Error loading products.');
  }
}

// function for save
void saveProducts() {
  try {
    File file = File('products.json');
    List<Map<String, dynamic>> jsonProducts =
        products.map((Product) => Product.toJson()).toList();
    file.writeAsStringSync(json.encode(jsonProducts));
    print('Tasks saved to file.');
  } catch (e) {
    print('Error saving tasks: $e');
  }
}

import 'dart:io';

void main() {
  print('Welcome to Alumbwe Shop Per Product Sale System');
  print('Add products');

  String op = 't';
  String quit = 'q';
  int totalAmount = 0;

  // Map to store products and their amounts
  Map<String, int> productsMap = {};

  while (true) {
    stdout.write('Product (or type \'q\' to quit): ');
    String? product = stdin.readLineSync();

    if (product == quit) {
      break;
    }

    stdout.write('Amount: ');
    int? amount = int.tryParse(stdin.readLineSync() ?? '');

    if (op == 't' && product != null && amount != null) {
      // Update the total amount
      totalAmount += amount;

      // Update the products map
      productsMap[product] = amount;

      print('Alumbwe Munali General Dealers Receipt');
      print('Products:');
      // Print details for each product
      productsMap.forEach((product, amount) {
        print('$product: $amount');
      });
      print('Total Amount: $totalAmount');
    }
  }
}

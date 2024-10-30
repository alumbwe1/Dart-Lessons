import 'dart:io';

void main() {
  // Welcome message
  print('Welcome to my Advanced Calculator made by Alumbwe');

  // Input the number of values for calculation
  stdout
      .write('How many numbers do you want for calculation? Enter a number: ');
  int? numberOfValues = int.tryParse(stdin.readLineSync()!);

  // Validate user input for the number of values
  if (numberOfValues == null || numberOfValues <= 0) {
    print(
        'Invalid input. Please enter a positive integer for the number of values.');
    return;
  }

  // Input the first number
  stdout.write('Please enter the first number: ');
  int? num1 = int.tryParse(stdin.readLineSync()!);

  // Choose operator
  stdout.write('Enter operator (+, -, *, /, etc):');
  String? op = stdin.readLineSync();

  // Input the remaining numbers
  for (int i = 2; i <= numberOfValues; i++) {
    print('Enter number $i:');
    int? nextNumber = int.tryParse(stdin.readLineSync()!);

    if (nextNumber == null) {
      print('Invalid input. Please enter a valid integer.');
      return;
    }

    // Adjust num1 according to the operator for multi-value calculations
    switch (op) {
      case '-':
        num1 = num1! - nextNumber;
        break;
      case '+':
        num1 = num1! + nextNumber;
        break;
      case '*':
        num1 = num1! * nextNumber;
        break;
      case '/':
        num1 = (num1! / nextNumber) as int?;
        break;
      default:
        print('Invalid operator.');
        return;
    }
  }

  // Display the result
  print('Result: $num1');
}

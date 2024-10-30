// import 'dart:io';

void main() {
  // print(
  //     "My Mamma always said,life is like a box of chocolates.you will never know you're gonna get ");
  // String s1 = "First half of the string. ";
  // String s2 = "Second half of the string";
  // String D2 = "HEY";
  // print(s1 + s2 + D2);
  // String Country = "Zambia";
  // double Score = 90.5;
  // print(
  //     " i visited $Country when i made $Score billion in my first year in Europe.");
  // print("The sum of 5 and 3 equals ${5 + 3}.");
  // var s1 = 'String '
  //     'concatenation'
  //     " works even over line breaks.";

  // print(s1);
//   var multilineString = """This is a
// multiline string
// consisting of
// multiple lines""";

  // print(multilineString);

  // String Name = "Ben";
  // int Age = 18;
  // print("$Name is $Age years old.");

//   import 'dart:io';

// void main() {
  // Taking user input for name
  // stdout.write("Enter your name: ");
  // String name = stdin
  //     .readLineSync()!; // '!' is used to indicate that the result won't be null

  // // Taking user input for age
  // stdout.write("Enter your age: ");
  // String ageString = stdin.readLineSync()!;
  // int age = int.parse(ageString);

  // // Embedding variables in a string
  // String finalString = "Hello, my name is ${name} and I am ${age} years old.";

  // // Printing the final string
  // print(finalString);

  // var bookTitle = "Lord of the Rings: The Fellowship of the Ring";
  // var bookAuthor = "J. R. R. Tolkien";
  // var bookNoOfPages = 423;

  // // Driving Code
  // print(bookTitle);
  // print(bookAuthor);
  // print(bookNoOfPages);
  // var operand1 = 10;
  // var operand2 = 7;

  // print(operand1 + operand2);
  // print(operand1 - operand2);
  // print(-operand1);
  // print(operand1 * operand2);
  // print(operand1 / operand2);
  // print(operand1 ~/ operand2);
  // print(operand1 % operand2);
  // var prefixIncrement = 5;
  // if (prefixIncrement > 10) {
  //   print(++prefixIncrement);
  //}
  // var operand1 = 10;
  // var operand2 = 7;

  // print(operand1 > operand2);
  // print(operand1 < operand2);
  // print(operand1 >= operand2);
  // print(operand1 <= operand2);
  // var operand1 = 'a';
  // var operand2 = 'b';

  // print(operand1 == operand2);
  // print(operand1 != operand2);

  // print("Before using a compound assignment operator:");
  // print(A);

  // A &= B;

  // print("After using a compound assignment operator:");
  // print(A);
  // var A = true;
  // var B = false;
  // var expr = A && B; //false

  // print(!A); // !true --> false
  // print(!B); // !false --> true
  // // ignore: dead_code
  // print(true || expr); // true || expr --> true
  // print(false || expr); // false || expr --> expr
  // print(true && expr); // true && expr --> expr

  // var check = 33;
  // var compareCheck = (check >= 8) && (check < 75);
  // print(compareCheck);

  // var simpleList = [1, 2, 3];

  // print(simpleList);
  // var listOfVegetables = ['potato', 'carrot', 'cucumber'];

  // print(listOfVegetables.length);
  // var listOfVegetables = ['potato', 'carrot', 'cucumber'];

  // listOfVegetables.add('cabbage');

  // print(listOfVegetables);
  // var listOfVegetables = ['potato', 'carrot', 'cucumber', 'cabbage'];

  // listOfVegetables.addAll(['broccoli', 'zucchini']);

  // print(listOfVegetables);

  // var vegetablesToAdd = ['okra', 'capsicum'];

  // listOfVegetables.addAll(vegetablesToAdd);

  // print(listOfVegetables);
  // var listOfVegetables = [
  //   'potato',
  //   'carrot',
  //   'cucumber',
  //   'cabbage',
  //   'broccoli',
  //   'zucchini'
  // ];

  // listOfVegetables.removeAt(0);
  // print(listOfVegetables);

  // listOfVegetables.removeAt(2);
  // print(listOfVegetables);
  // var listOfVegetables = ['carrot', 'cucumber', 'zucchini'];
  // var mappedVegetables =
  //     listOfVegetables.map((vegetable) => 'I love $vegetable');
  // print(mappedVegetables);
  // var integers = [1, 2, 3];
  // var cubes = integers.map((integer) => integer * integer * integer).toList();
  // print(cubes);
  // var capitals = {
  //   'United States': 'Washington D.C.',
  //   'England': 'London',
  //   'China': 'Beijing',
  //   'Germany': 'Berlin',
  //   'Nigeria': 'Abuja',
  //   'Egypt': 'Cairo',
  //   'New Zealand': 'Wellington'
  // };

  // // Retrieving all the keys
  // var allKeys = capitals.keys;
  // print("Keys: $allKeys");

  // // Retrieving all the values
  // var allValues = capitals.values;
  // print("Values: $allValues");
  // var capitals = {
  //   'United States': 'Washington D.C.',
  //   'England': 'London',
  //   'China': 'Beijing',
  //   'Germany': 'Berlin',
  //   'Nigeria': 'Abuja',
  //   'Egypt': 'Cairo',
  //   'New Zealand': 'Wellington'
  // };

  // // Removing a key-value pair
  // capitals.remove('China');
//  print(capitals);
//   var testList = [2, 4, 8, 16, 32];
//   print(testList);

//   if (testList.isNotEmpty) {
//     print("Emptying List");
//     testList.clear();
//   }

//   print(testList);
  // var pointA = 50;
  // var pointB = 50;
  // if (pointA > pointB) {
  //   print('Team A wins');
  // } else if (pointB > pointA) {
  //   print('Team B wins');
  // } else {
  //   print('its a tie');
  // }
  // var pointA = 90;
  // var pointB = 50;
  // var results;

  // if (pointA > pointB) {
  //   results = pointA - pointB;
  // } else {
  //   results = pointB - pointA;
  // }
  // print(results);
  // var scores = [50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  // var percentage = 81;

  // // Calculate the average class score
  // var sum = scores[0] +
  //     scores[1] +
  //     scores[2] +
  //     scores[3] +
  //     scores[4] +
  //     scores[5] +
  //     scores[6] +
  //     scores[7] +
  //     scores[8] +
  //     scores[9] +
  //     scores[10] +
  //     scores[11] +
  //     scores[12];
  // var average = sum / 13;

  // // Check if student has passed or failed
  // if (percentage >= 60 && percentage > (average - 5)) {
  //   print("pass");
  // } else {
  //   print("fail");
  // }
  // for (var i = 10; i < 20; i++) {
  //   print(i);
  // }
  // var colorList = ['blue', 'yellow', 'green', 'red'];
  // for (var i = 0; i < colorList.length; i++) {
  //   print(colorList[i]);
  // }
  // var colorList = ['blue', 'yellow', 'green', 'red'];

  // for (var i in colorList) {
  //   print(i);
  // }
  // var intList = [0, 6, 7, 3, 9, 2, 5, 4];

  // for (var i in intList) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  // }
  //
  // var command = 'CLOSED';

  // switch (command) {
  //   case 'CLOSED':
  //     print('closed');
  //     break;
  //   case 'PENDING':
  //     print('pending');
  //     break;
  //   case 'APPROVED':
  //     print('approved');
  //     break;
  //   case 'DENIED':
  //     print('denied');
  //     break;
  //   case 'OPEN':
  //     print('open');
  //     break;
  //   default:
  //     print('command unknown');
  // }
  int num2 = 20;
  for (int i = 0; i < num2; i++) {
    print(i);
  }
}

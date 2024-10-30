//Dart supports anonymous functions,
// also known as function literals or lambda expressions.
//They are defined without a name and can be assigned to variables
//or passed as arguments to other functions. e.g
void main() {
  // Anonymous function assigned to a variable called multing
  var multiply = (int a, int b) {
    return a * b;
  };

  // Calling the anonymous function
  int result = multiply(4, 6);
  print('Result: $result');
}

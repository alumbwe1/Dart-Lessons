// Optional Parameters
// Dart allows you to define functions with
// parameters using square brackets []:
// e.g
// Function with optional parameters
void greet(String name, [String? greeting]) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}

void main() {
  greet('Alice'); // Prints: Hello, Alice!
  greet('Bob', 'Hi'); // Prints: Hi, Bob!
}

//In this example, the greet function has an 
//optional parameter greeting. 
//You can call the function with or without providing a greeting.



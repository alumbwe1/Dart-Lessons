//Learning functions
// three types of fuction
//Learning functions
// three types of fuction
//1.Named functions A named function in Dart has a name and can take parameters.
// It can also have a return type
// Named function with parameters and a return type e.g

//   //returns a and b type
int add(
  int a,
  int b,
) {
  return a + b;
}
//   return a + b;
// }

void main() {
  //calling a function which is add
  int results = add(5, 9);
  //printing results
  print('Results: $results');
}

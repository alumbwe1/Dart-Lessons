//Dart also supports named parameters,
//which allows you to specify the name
//of the parameter when calling the function:
//e.g
// Function with named parameters
void printProfile({String name = '', int age = 0, String country = ''}) {
  print('Name: $name, Age: $age, Country: $country');
}

void main() {
  printProfile(name: 'John', age: 25, country: 'USA');
  // Prints: Name: John, Age: 25, Country: USA
}

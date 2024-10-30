// Future<void> fetchData() async {
//   print('Fetching Data .....');
//   await Future.delayed(Duration(seconds: 10));
//   print('Data Fetched.');
// }

// void main() {
//   print('Start of program');
//   fetchData().then((_) {
//     print('End of program');
//   });
// }

// Future<void> fetchDataWithError() async {
//   print('Fetching data with error...');
//   await Future.delayed(Duration(seconds: 2));
//   throw Exception('Error: Unable to fetch data');
// }

// void main() {
//   print('Start of program');
//   fetchDataWithError()
//       .then((_) => print('End of program'))
//       .catchError((error) => print('Error: $error'));
// }
// Future<void> fetchData() async {
//   print('Fetching Data ...');
//   await Future.delayed(Duration(seconds: 5));
//   print('Data fetched while !!!!');
// }

// void main() async {
//   print('Starting the program.');
//   await fetchData();
//   print('End of the program');
// }

// Stream<int> countDown(int from, int to) async* {
//   for (int i = from; i >= to; i--) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// void main() async {
//   await for (var value in countDown(5, 1)) {
//     print(value);
//   }
//   print('Countdown complete!');
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _onButtonPressed() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alumbwe'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello there'),
              SizedBox(height: 20), // Add a comma here
              FlatButton(
                onPressed: _onButtonPressed,
                color: Colors.blue,
                child: Text('Press me'),
                textColor: Colors.white, // Change 'style' to 'textColor'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'busClasses.dart';

class MoreBusDetails extends Bus {
  num year;
  String owner;
  num income;
  String people;
  num cost;

  MoreBusDetails(String name, String description, this.income, this.owner,
      this.people, this.year, this.cost)
      : super(name, description);

  void Busdetails() {
    print('Welcome to Alumbwe Motors for your safety');
    printDetails();
    print('Manufacture year: ${this.year}');
    print('Manufacture company: ${this.owner}');
    print('Average income to be spent k${this.income}');
    print('Maximum people to carry: ${this.people}');
    print('This bus cost k${this.cost} as of you now in 2023.');
  }
}

void main() {
  var bus = MoreBusDetails('Benz', 'Not used at all', 2000,
      'Alumbwe Munali Motors', '60 people', 2022, 60000);
  bus.Busdetails();
}

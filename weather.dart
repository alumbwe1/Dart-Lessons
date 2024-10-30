import 'dart:convert';
import 'dart:io';

class Weather {
  final String city;
  final double temperature;
  final String description;

  Weather(this.city, this.temperature, this.description);
}

Future<void> main() async {
  print('Welcome to the Dart Weather App!');
  String cityName = getUserInput();
  Weather weather = await fetchWeather(cityName);
  displayWeather(weather);
}

String getUserInput(String s) {
  stdout.write('Enter city name: ');
  return stdin.readLineSync()!;
}

Future<Weather> fetchWeather(String city) async {
  // Use an actual weather API endpoint here
  String apiUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=2aeac043818c7b0842dfaf642acf2dbb';

  // Make an HTTP request to the weather API
  HttpClient client = HttpClient();
  var request = await client.getUrl(Uri.parse(apiUrl));
  var response = await request.close();
  var jsonResponse = await response.transform(utf8.decoder).join();

  // Parse JSON and create a Weather object
  Map<String, dynamic> weatherData = json.decode(jsonResponse);
  Weather weather = Weather(
    city,
    weatherData['main']['temp'].toDouble(),
    weatherData['weather'][0]['description'],
  );

  return weather;
}

void displayWeather(Weather weather) {
  print('\nWeather in ${weather.city}:');
  print('Temperature: ${weather.temperature}°C');
  print('Description: ${weather.description}');
}

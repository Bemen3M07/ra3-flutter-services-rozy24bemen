import 'package:http/http.dart' as http;
import 'car_model.dart';

class CarService {
  final String _baseUrl = "https://car-data.p.rapidapi.com/cars";
  final String _apiKey = "c4cb5999b7msha98302d04ff2ab8p1ddb7bjsn6514bd875a4c"; // La que obtienes en RapidAPI

  Future<List<CarModel>> getCars() async {
    final response = await http.get(
      Uri.parse(_baseUrl),
      headers: {
        'X-RapidAPI-Key': _apiKey,
        'X-RapidAPI-Host': 'car-data.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      return carModelFromJson(response.body);
    } else {
      throw Exception("Error al cargar datos: ${response.statusCode}");
    }
  }
}
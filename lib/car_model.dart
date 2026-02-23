import 'dart:convert';

class CarModel {
  final String make;
  final String model;

  CarModel({required this.make, required this.model});

  // Crear objeto desde un Map (JSON decodificado)
  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      make: json['make'] ?? 'Unknown',
      model: json['model'] ?? 'Unknown',
    );
  }

  // Convertir objeto a Map
  Map<String, dynamic> toJson() => {
    "make": make,
    "model": model,
  };
}

// Funciones globales para manejar listas de JSON
List<CarModel> carModelFromJson(String str) =>
    List<CarModel>.from(json.decode(str).map((x) => CarModel.fromJson(x)));
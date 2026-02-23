import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_hello_world/car_service.dart';

void main() {
  test('Comprobar que getCars retorna una lista no vacía', () async {
    final service = CarService();
    final cars = await service.getCars();

    print('Se han obtenido ${cars.length} coches.');
    
    // Verificamos que la respuesta sea exitosa
    expect(cars, isNotEmpty);
    expect(cars[0].make, isNotNull);
  });
}
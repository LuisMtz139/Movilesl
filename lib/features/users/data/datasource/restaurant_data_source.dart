import 'dart:convert';

import 'package:myapp/features/users/data/models/restaurant_models.dart';

abstract class RestaurantApiDataSource {
  // https://jsonplaceholder.typicode.com/posts
  Future<List<RestaurantModel>> getAllRestaurants();
  Future<void> postRegisterRestaurant(RestaurantModel restaurantModel);
  Future<void> postLogInRestaurant(String email, String password);
}

class RestaurantModelDataSourceImp implements RestaurantApiDataSource {
  get http => null;



  @override
  Future<List<RestaurantModel>> getAllRestaurants() async {
    try {
      final response = await http.get(
        Uri.parse('https://mobil-back-upbu-production-160d.up.railway.app/restaurants/list'),
        // Aquí puedes incluir headers si es necesario (como token de autorización)
      );

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, procesa y deserializa los datos de la respuesta
        List<dynamic> restaurantData = jsonDecode(response.body);
        List<RestaurantModel> restaurantes = restaurantData
            .map((restaurant) => RestaurantModel.fromJson(restaurant))
            .toList();
        return restaurantes;
      } else {
        // La solicitud no fue exitosa, manejar el error aquí
        print('Error en la solicitud: ${response.statusCode}');
        throw Exception('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      // Maneja cualquier error que ocurra durante la solicitud
      print('Error en la solicitud: $e');
      throw Exception('Error en la solicitud: $e');
    }
  }


  @override
  Future<void> postLogInRestaurant(String email, String password) {
    // TODO: implement postLogInRestaurant
    throw UnimplementedError();
  }

  @override
  Future<void> postRegisterRestaurant(RestaurantModel restaurantModel) {
    // TODO: implement postRegisterRestaurant
    throw UnimplementedError();
  }


}




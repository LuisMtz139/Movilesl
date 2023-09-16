

import 'package:myapp/features/users/data/datasource/restaurant_data_source.dart';
import 'package:myapp/features/users/domain/entities/Restaurant.dart';
import 'package:myapp/features/users/domain/repository/RestaurantRepository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository{

  final RestaurantApiDataSource restaurantApiDataSource;

  RestaurantRepositoryImpl({required this.restaurantApiDataSource});

  @override
  Future<List<Restaurant>> getAllRestaurants() async {
    return await restaurantApiDataSource.getAllRestaurants();
  }

  @override
  Future<void> postLogInRestaurant(String email, String password) {
    // TODO: implement postLogInRestaurant
    throw UnimplementedError();
  }

  @override
  Future<void> postRegisterRestaurant(Restaurant) {
    // TODO: implement postRegisterRestaurant
    throw UnimplementedError();
  }

}
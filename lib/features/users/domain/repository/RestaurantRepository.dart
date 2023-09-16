import '../entities/Restaurant.dart';

abstract class RestaurantRepository{


  Future<List<Restaurant>> getAllRestaurants();
  Future<void> postRegisterRestaurant(Restaurant);
  Future<void> postLogInRestaurant(String email, String password );
}
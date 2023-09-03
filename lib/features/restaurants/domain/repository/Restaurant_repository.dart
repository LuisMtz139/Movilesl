import '../entities/Restaurant.dart';

abstract class RestaurantRepository{
  Future<List<Restaurant>> getAllProductsByRestaurant();
  Future<List<Restaurant>> getAllOrdersByRestaurant();
  Future<List<Restaurant>> getAllRestaurants();
  Future<String> postRegisterRestaurant(Restaurant);
  Future<String> postLogInRestaurant(String email, String password );
}
import 'package:myapp/features/users/data/models/restaurant_models.dart';

abstract class RestaurantApiDataSource {
  // https://jsonplaceholder.typicode.com/posts
  Future<List<RestaurantModel>> getAllRestaurants();
  Future<void> postRegisterRestaurant(RestaurantModel restaurantModel);
  Future<void> postLogInRestaurant(String email, String password);
}

class RestaurantModelDataSourceImp implements RestaurantApiDataSource {
  @override
  Future<List<RestaurantModel>> getAllRestaurants() {
    // TODO: implement getAllRestaurants
    throw UnimplementedError();
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




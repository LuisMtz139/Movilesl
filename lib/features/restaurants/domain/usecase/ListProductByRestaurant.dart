import 'package:myapp/features/restaurants/domain/entities/Restaurant.dart';
import 'package:myapp/features/restaurants/domain/repository/Restaurant_repository.dart';

class ListProductByRestaurant {
  final RestaurantRepository restaurantRepository;

  ListProductByRestaurant(this.restaurantRepository);

  Future<List<Restaurant>> execute() async {
    return await restaurantRepository.getAllProductsByRestaurant();
  }
}
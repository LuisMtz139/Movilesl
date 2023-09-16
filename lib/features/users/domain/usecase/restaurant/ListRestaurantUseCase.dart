
import '../../entities/Restaurant.dart';
import '../../repository/RestaurantRepository.dart';

class ListOrderByRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  ListOrderByRestaurantUseCase(this.restaurantRepository);

  Future<List<Restaurant>> execute() async {
    return await restaurantRepository.getAllRestaurants();
  }
}
import '../entities/Restaurant.dart';
import '../repository/Restaurant_repository.dart';

class ListOrderByRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  ListOrderByRestaurantUseCase(this.restaurantRepository);

  Future<List<Restaurant>> execute() async {
    return await restaurantRepository.getAllRestaurants();
  }
}
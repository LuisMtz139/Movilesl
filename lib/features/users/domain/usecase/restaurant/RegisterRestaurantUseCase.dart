import '../../entities/Restaurant.dart';
import '../../repository/RestaurantRepository.dart';

class RegisterRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  RegisterRestaurantUseCase(this.restaurantRepository);

  Future<void> execute(Restaurant restaurant) async {
    return await restaurantRepository.postRegisterRestaurant(restaurant);
  }
}
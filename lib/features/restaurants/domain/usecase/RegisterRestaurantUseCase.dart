import '../entities/Restaurant.dart';
import '../repository/Restaurant_repository.dart';

class RegisterRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  RegisterRestaurantUseCase(this.restaurantRepository);

  Future<String> execute() async {
    return await restaurantRepository.postRegisterRestaurant(Restaurant);
  }
}
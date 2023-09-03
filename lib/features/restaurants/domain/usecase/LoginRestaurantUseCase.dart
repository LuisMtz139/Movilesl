import '../entities/Restaurant.dart';
import '../repository/Restaurant_repository.dart';

class LoginRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  LoginRestaurantUseCase(this.restaurantRepository);


  Future<String> execute(String email, String password) async {
    try {
      return await restaurantRepository.postLogInRestaurant(email, password);
    } catch (e) {
      throw e;
    }
  }
}
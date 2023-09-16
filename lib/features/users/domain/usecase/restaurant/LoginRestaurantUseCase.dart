import '../../entities/Restaurant.dart';
import '../../repository/RestaurantRepository.dart';

class LoginRestaurantUseCase {
  final RestaurantRepository restaurantRepository;

  LoginRestaurantUseCase(this.restaurantRepository);


  Future<void> execute(String email, String password) async {
    try {
      return await restaurantRepository.postLogInRestaurant(email, password);
    } catch (e) {
      throw e;
    }
  }
}
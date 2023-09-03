import 'package:myapp/features/users/domain/entities/User.dart';

import '../repository/UserRepository.dart';

class RegisterUserUseCase {
  final UserRepository restaurantRepository;

  RegisterUserUseCase(this.restaurantRepository);

  Future<List<User>> execute() async {
    return await restaurantRepository.getAllOrdersByUser();
  }
}
import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/repository/UserRepository.dart';

import '../../../restaurants/domain/repository/Restaurant_repository.dart';

class RegisterUserUseCase {
  final UserRepository restaurantRepository;

  RegisterUserUseCase(this.restaurantRepository);

  Future<String> execute() async {
    return await restaurantRepository.postRegisterUser(User);
  }
}
import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/repository/UserRepository.dart';

class LoginUseCase {
  final UserRepository userRepository;

  LoginUseCase(this.userRepository);

  Future<void> execute(String email, String password) async {
    return await userRepository.postLogInUser(email, password);
  }
}
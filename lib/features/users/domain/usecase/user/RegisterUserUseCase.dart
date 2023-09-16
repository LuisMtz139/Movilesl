import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/repository/UserRepository.dart';



class RegisterUserUseCase {
  final UserRepository userRepository;

  RegisterUserUseCase(this.userRepository);

  Future<void> execute(User user) async {
    return await userRepository.postRegisterUser(user);
  }
}
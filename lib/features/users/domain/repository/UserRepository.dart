


import '../entities/User.dart';

abstract class UserRepository {
  Future<void> postRegisterUser(User user);
  Future<void> postLogInUser(String email,String password);
}
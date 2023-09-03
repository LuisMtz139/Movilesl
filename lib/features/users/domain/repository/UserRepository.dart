

import 'package:myapp/features/users/domain/entities/User.dart';

abstract class UserRepository {
  Future<String> postRegisterUser(User);
  Future<String> postLogInUser(String email,String password);
  Future<String> postMakeOrder();
  Future<List<User>> getAllOrdersByUser();

}
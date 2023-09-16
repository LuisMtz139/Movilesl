

import '../../domain/entities/User.dart';
import '../../domain/repository/UserRepository.dart';
import '../datasource/user_data_sorce.dart';


class UserRepositoryImp implements UserRepository {
  
  final UserApiDataSource userApiDataSource;

  UserRepositoryImp({required this.userApiDataSource});

  @override
  Future<void> postRegisterUser(User user) async {
   //aqui se llama la funcion de datasource correspondiente
    return await userApiDataSource.createUser(user);
  }

  @override
  Future<void> postLogInUser(String email, String password) async {
   //aqui se llama la funcion de datasource correspondiente
    
    return await userApiDataSource.logIn(email,password);
  }

  

}

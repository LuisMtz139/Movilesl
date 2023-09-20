import 'package:myapp/features/users/data/datasource/user_data_sorce.dart';
import 'package:myapp/features/users/data/repositories/UserRepositoryImp.dart';
import 'package:myapp/features/users/domain/usecase/user/RegisterUserUseCase.dart';

class UsecaseConfig {
  UserApiDataSourceImp? userApiDataSourceImp;
  UserRepositoryImp? userRepositoryImp;
  RegisterUserUseCase? registerUserUseCase;

  UsecaseConfig() {
    userApiDataSourceImp = UserApiDataSourceImp();
    userRepositoryImp = UserRepositoryImp(userApiDataSource: userApiDataSourceImp!);
    registerUserUseCase = RegisterUserUseCase(userRepositoryImp!);
  }
}
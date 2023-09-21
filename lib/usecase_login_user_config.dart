

import 'package:myapp/features/users/data/datasource/user_data_sorce.dart';
import 'package:myapp/features/users/data/repositories/UserRepositoryImp.dart';
import 'package:myapp/features/users/domain/usecase/user/LoginUserUseCase.dart';

class UsecaseLoginUserConfig {
  UserApiDataSourceImp? userApiDataSourceImp;
  UserRepositoryImp? userRepositoryImp;
  LoginUseCase? loginUseCase;

  UsecaseLoginUserConfig(){
    userApiDataSourceImp = UserApiDataSourceImp();
    userRepositoryImp = UserRepositoryImp(userApiDataSource: userApiDataSourceImp!);
    loginUseCase = LoginUseCase(userRepositoryImp!);
  }
  
}
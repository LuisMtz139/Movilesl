import 'dart:convert';
import 'package:myapp/features/users/data/models/user_models.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../../domain/entities/User.dart';

abstract class UserApiDataSource {//cooregir el= nombre dependiendo el tipo de consumo
  // https://jsonplaceholder.typicode.com/posts
    Future<List<UserModel>> getUser();
    Future<void> createUser(User user);
    Future<void> logIn(String email, String password);
}

class UserApiDataSourceImp implements UserApiDataSource {
  @override
  Future<void> createUser(User user) async {
    await Future.delayed(const Duration(seconds: 2)); // Simulación de demora de 2 segundos
  }


 @override
 Future<void> logIn(String email, String password) async {
  await Future.delayed(const Duration(seconds: 2)); // Simulación de demora de 2 segundos
 }

  @override
  Future<List<UserModel>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}


 
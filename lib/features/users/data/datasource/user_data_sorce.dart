import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


import '../../domain/entities/User.dart';
import '../../presentation/pages/user/home.dart';
import '../../presentation/pages/user/iniciar-sesion.dart';
import '../../presentation/pages/user/registrar.dart';
import '../models/user_models.dart';

abstract class UserApiDataSource {//cooregir el= nombre dependiendo el tipo de consumo
  // https://jsonplaceholder.typicode.com/posts
    Future<List<UserModel>> getUser();
    Future<void> createUser(User user);
    Future<void> logIn(String email, String password);
}

class UserApiDataSourceImp implements UserApiDataSource {
  BuildContext? context;

  @override
  Future<void> createUser(User user) async {
    print("entre registro");
    String errorMessage = ''; // Inicializa el mensaje de error

    // Obtén los datos del usuario
    final String email = user.email;
    final String password = user.password;
    final String confirmPassword = user.confirmPassword;
    final String name = user.name;
    final String phoneNumber = user.phoneNumber;

    print(email +' '+ password+' ' + confirmPassword+' ' + name+' ' +phoneNumber);


    // Verificar si las contraseñas coinciden
    if (password != confirmPassword) {
      errorMessage = 'Las contraseñas no coinciden. Por favor, inténtalo de nuevo.';
      Fluttertoast.showToast(
        msg: errorMessage,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    try {

      // Realiza la solicitud POST
      var response = await http.post(
        Uri.parse('https://mobil-back-upbu-production-160d.up.railway.app/register/user'),
        body: UserModel.fromEntity(user).toJson(),
      );

      // Muestra el status de la solicitud
      print('Status: ${response.statusCode}');

      // Imprime la respuesta del servidor
      print(response.body);

      // Procesa la respuesta
      if (response.statusCode == 200) {
        print('La respuesta tiene un código de estado 200.');

        // Redirecciona a otra página
        if (context == null) {
          print('PRUEBA 1234');
          Navigator.push(
            context!,
            MaterialPageRoute(
              builder: (context) => OtherScene(),
            ),
          );
        }
      }
    } catch (e) {
      print(e);
      //trhow exception
    }
  }


  @override
  Future<String> logIn(String email, String password) async {
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    print('aaaaaaaa');
    try {
      var response = await http.post(
        Uri.parse('https://mobil-back-upbu-production-160d.up.railway.app//login/user'),
        headers: headers,
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('token', response.body);
        print('Inicio de sesión exitoso');
        print('Response: ${response.body}');
        // Guarda el token en una variable y retorna el token
        String token = response.body;
        print('dfdfdf'+token);
        return token;
      } else {
        print('Fallido inicio. Código de estado: ${response.statusCode}');
        print('Mensaje: ${response.body}');
        throw Exception('Inicio de sesión fallido. Código de estado: ${response.statusCode}');
      }
    } catch (error) {
      print('Error inicio de sesión: $error');
      throw Exception('Error durante el inicio de sesión: $error');
    }
  }




  @override
  Future<List<UserModel>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}


 
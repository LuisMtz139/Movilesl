import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/features/users/data/models/user_models.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;


import '../../domain/entities/User.dart';
import '../../presentation/pages/user/iniciar-sesion.dart';

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
      // Construye el mapa de datos
      var data = {
        'email': email,
        'password': password,
        'name': name,
        'phone_number': phoneNumber,
        'confirm': confirmPassword,
      };

      // Realiza la solicitud POST
      var response = await http.post(
        Uri.parse('https://mobil-back-upbu-production.up.railway.app/register/user'),
        body: data,
      );

      // Muestra el status de la solicitud
      print('Status: ${response.statusCode}');

      // Procesa la respuesta
      if (response.statusCode == 200) {
        // Navega a la pantalla de inicio
        Navigator.push(
          context!,
          MaterialPageRoute(
            builder: (context) => Inicio(),
          ),
        );
      } else {
        // Muestra un mensaje de error en caso de un código de estado diferente a 200
        switch (response.statusCode) {
          case 400:
            errorMessage = 'Los datos proporcionados son inválidos.';
            break;
          case 401:
            errorMessage = 'El usuario no está autorizado.';
            break;
          case 403:
            errorMessage = 'El usuario no tiene permiso para crear usuarios.';
            break;
          default:
            errorMessage = 'Error desconocido.';
            break;
        }

        Fluttertoast.showToast(
          msg: errorMessage,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
        );
      }
    } catch (e) {
      print(e);
      // Muestra un mensaje de error genérico en caso de excepción
      Fluttertoast.showToast(
        msg: 'No se pudo enviar los datos. Inténtalo de nuevo más tarde.',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
    }
  }


  @override
  Future<void> logIn(String email, String password) async {
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    print('aaaaaaaa');

    try {
      var response = await http.post(
        Uri.parse('https://mobil-back-upbu-production.up.railway.app/login/user'),
        headers: headers,
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print('Inicio de sesión exitoso');
        print('Response: ${response.body}');
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


 
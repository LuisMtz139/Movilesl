import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import '../../../data/datasource/user_data_sorce.dart';
import '../../../domain/entities/User.dart';
import 'iniciar-sesion.dart';



class RegistrarScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scene(),
    );
  }
}

class Scene extends StatefulWidget {
  @override
  _SceneState createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  String errorMessage = '';

  void _confirm(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    String name = nameController.text;
    String phoneNumber = phoneNumberController.text;

    User user = User(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      name: name,
      phoneNumber: phoneNumber,
    );

    // Llamada a createUser
    try {
      await UserApiDataSourceImp().createUser(user);

      // Ejemplo de navegación a la pantalla de inicio después del registro exitoso
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio()));

    } catch (error) {

      print('Error al crear el usuario: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double ffem = screenHeight > 667 ? 1.0 : screenHeight / 667;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registro',
          style: TextStyle(
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff2e2e2e),
      ),
      body: Container(
        color: Color(0xff2e2e2e),
        padding: EdgeInsets.all(20 * ffem),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300 * ffem,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextFormField(
                    controller: emailController,
                    style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Email@example.com',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                  ),


                  SizedBox(height: 20 * ffem),


                  TextFormField(
                    controller: nameController,
                    style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Nombre',
                      hintStyle: const TextStyle( color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                  ),


                  SizedBox(height: 20 * ffem),


                  TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Número de celular',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                  ),


                  SizedBox(height: 30 * ffem),


                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                  ),

                  
                  SizedBox(height: 20 * ffem),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Confirmar Contraseña',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                  ),
                  SizedBox(height: 20 * ffem),
                  ElevatedButton(
                    onPressed: () {
                      _confirm(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xff2e2e2e),
                      padding: EdgeInsets.symmetric(vertical: 15 * ffem),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                    ),
                    child: Text(
                      'CONFIRMAR',
                      style: TextStyle(
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10 * ffem),
                  Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/features/users/presentation/blocs/user/registrar/registrar_bloc.dart';
import 'package:myapp/routes/router.dart';

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

  User _confirm()  {
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

    return user;
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
                  CustomTextField(controller: emailController, hintText: 'Email@example.com'),

                  SizedBox(height: 20 * ffem),

                  CustomTextField(controller: nameController, hintText: 'Nombre'),
                 
                  SizedBox(height: 20 * ffem),

                  CustomTextField(controller: phoneNumberController, hintText: 'Número de celular'),
                 
                  SizedBox(height: 30 * ffem),

                  CustomTextField(controller: passwordController, hintText: 'Contraseña'),
                  
                  SizedBox(height: 20 * ffem),

                  CustomTextField(controller: confirmPasswordController, hintText: 'Confirmar Contraseña'),
                    BlocBuilder<RegistrarBloc, RegistrarState>(
                builder: (context, state) {
                  if(state is RegisterError) {
                    return Text(
                      state.error,
                      style: TextStyle(color: Colors.red),
                    );
                  } else {
                    return Container();
                  }
                }
              ),

                  SizedBox(height: 20 * ffem),
                  ElevatedButton(
                    onPressed: () async {
                       bool register = await context.read<RegistrarBloc>().resgister(_confirm());
                       print('aquiiiiiiiiiiiiiiii aaaaaaaaaaaaaaaaaaa $register');
                      if (register) {
                        // ignore: use_build_context_synchronously
                        context.read<RouterSimpleCuibit>().goInicio();
                      }
                      // _confirm(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color(0xff2e2e2e),
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

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double ffem;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.ffem = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: 16 * ffem, color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
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
    );
  }
}
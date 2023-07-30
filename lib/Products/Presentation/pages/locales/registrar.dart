import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import '../locales/iniciar-sesion.dart';

void main() {
  runApp(RegistrarScene());
}

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
    final String email = emailController.text;
    final String password = passwordController.text;
    final String confirmPassword = confirmPasswordController.text;
    final String name = nameController.text;
    final String phoneNumber = phoneNumberController.text;

    // Verificar si las contraseñas coinciden
    if (password != confirmPassword) {
      setState(() {
        errorMessage = 'Las contraseñas no coinciden. Por favor, inténtalo de nuevo.';
      });
      return;
    }

    try {
      // Preparar los datos para enviarlos en el formato de la solicitud
      var data = {
        'email': email,
        'password': password,
        'name': name,
        'phone_number': phoneNumber,
        'confirm': confirmPassword,
      };

      var response = await http.post(
        Uri.parse('https://mobil-back-upbu-production.up.railway.app/register/user'),
        body: data,
      );

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, navegar a la página de éxito
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ),
        );
      } else {
        // La solicitud falló, mostrar un mensaje de error con un Toast
        Fluttertoast.showToast(
          msg: 'Error al enviar los datos. Código de estado: ${response.statusCode}',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
        );
      }
    } catch (e) {
      // Mostrar el mensaje de error en la consola
      print(e);
      // Mostrar un mensaje de error con un Toast
      Fluttertoast.showToast(
        msg: 'No se pudo enviar los datos. Inténtalo de nuevo más tarde.',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
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
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10 * ffem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
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
                      primary: Color(0xff2e2e2e),
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
                    style: TextStyle(color: Colors.red),
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

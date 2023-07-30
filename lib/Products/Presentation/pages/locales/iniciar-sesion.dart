import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../Users/home.dart';
import './registrar.dart';
import '../../services/serviceInicio.dart'; // Importa el archivo serviceInicio.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scene(),
      routes: {
        '/otherScene': (context) => OtherScene(),
        '/registrar': (context) => RegistrarScene(), // Agrega la ruta para la vista de registro
      },
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
  String errorMessage = '';

  void _login(BuildContext context) async {
    final String email = emailController.text;
    final String password = passwordController.text;

    // Llama al método login de ServiceInicio para realizar el inicio de sesión.
    bool isLoggedIn = await ServiceInicio.login(email, password);

    if (isLoggedIn) {
      // Redirige a OtherScene si el inicio de sesión fue exitoso.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtherScene(),
        ),
      );
    } else {
      // Muestra el mensaje de error en caso de credenciales incorrectas.
      setState(() {
        errorMessage = 'Credenciales incorrectas, por favor intenta de nuevo.';
      });
    }
  }

  void _register(BuildContext context) {
    // Redirige a la vista de registro.
    // Utilizamos Navigator.pushNamed porque ya definimos la ruta en MaterialApp.
    Navigator.pushNamed(context, '/registrar');
    // Si tienes una ruta para la vista de registro, puedes utilizarla así:
    // Navigator.pushNamed(context, '/registro');
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 668 * fem,
          decoration: BoxDecoration(
            color: Color(0xff2e2e2e),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 64 * fem,
                top: 201 * fem,
                child: Align(
                  child: SizedBox(
                    width: 98 * fem,
                    height: 13 * fem,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email@example.com',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          decoration: TextDecoration.underline,
                          color: Color(0x8effffff),
                          decorationColor: Color(0x8effffff),
                        ),
                      ),
                      style: GoogleFonts.inter(
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0x8effffff),
                        decorationColor: Color(0x8effffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32 * fem,
                top: 433 * fem,
                child: TextButton(
                  onPressed: () {
                    _login(context); // Pasar el BuildContext como argumento
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 254 * fem,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe29235)),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'INICIAR SESION',
                        style: GoogleFonts.inter(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32 * fem,
                top: 489 * fem,
                child: TextButton(
                  onPressed: () {
                    _register(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 254 * fem,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff3550e2)),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'REGISTRARSE',
                        style: GoogleFonts.inter(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64 * fem,
                top: 216 * fem,
                child: Align(
                  child: SizedBox(
                    width: 194 * fem,
                    height: 1 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64 * fem,
                top: 292 * fem,
                child: Align(
                  child: SizedBox(
                    width: 194 * fem,
                    height: 1 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64 * fem,
                top: 175 * fem,
                child: Align(
                  child: SizedBox(
                    width: 42 * fem,
                    height: 13 * fem,
                    child: Text(
                      'CORREO',
                      style: GoogleFonts.inter(
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34 * fem,
                top: 2 * fem,
                child: Align(
                  child: SizedBox(
                    width: 62 * fem,
                    height: 13 * fem,
                    child: Text(
                      'Iniciar sesion',
                      style: GoogleFonts.inter(
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0x96ffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64 * fem,
                top: 259 * fem,
                child: Align(
                  child: SizedBox(
                    width: 69 * fem,
                    height: 13 * fem,
                    child: Text(
                      'CONTRASEÑA',
                      style: GoogleFonts.inter(
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 63 * fem,
                top: 279 * fem,
                child: Align(
                  child: SizedBox(
                    width: 65 * fem,
                    height: 13 * fem,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0x8effffff),
                        ),
                      ),
                      style: GoogleFonts.inter(
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0x8effffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32 * fem,
                top: 567 * fem,
                child: errorMessage.isNotEmpty
                    ? Text(
                  errorMessage,
                  style: GoogleFonts.inter(
                    fontSize: 10 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Colors.red, // Mostrar mensaje de error en rojo
                  ),
                )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

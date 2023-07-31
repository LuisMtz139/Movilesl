import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../usuarios-compradores/listaProducts.dart';
import '../usuarios-compradores/registrar-Yyu.dart';

void main() {
  runApp(InicioTienda());
}

class UserState with ChangeNotifier {
  String encodedToken = '';
  int restaurantId = 0;

  Future<void> setTokenAndRestaurant(String token, int restaurantId) async {
    this.encodedToken = token;
    this.restaurantId = restaurantId;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setInt('restaurantId', restaurantId);
    notifyListeners();
  }

  Future<void> loadTokenAndRestaurant() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    this.encodedToken = prefs.getString('token') ?? '';
    this.restaurantId = prefs.getInt('restaurantId') ?? 0;
    notifyListeners();
  }
}

class InicioTienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserState()),
      ],
      child: MaterialApp(
        home: Scene(),
        routes: {
          '/otherScene': (context) => Hola(),
          '/registrar': (context) => RestaurantRegistrationView(),
        },
      ),
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

  @override
  void initState() {
    super.initState();
    Provider.of<UserState>(context, listen: false).loadTokenAndRestaurant();
  }

  Future<http.Response> _login(BuildContext context) async {
    final String email = emailController.text;
    final String password = passwordController.text;

    final Uri url =
    Uri.parse('https://mobil-back-upbu-production.up.railway.app/login/restaurant');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    return response;
  }

  void _handleLogin(BuildContext context) async {
    final http.Response response = await _login(context);

    if (response.statusCode == 200) {
      print('Respuesta del servidor: ${response.body}');
      String encodedToken = response.body;
      int restaurantId = 10;

      Provider.of<UserState>(context, listen: false).setTokenAndRestaurant(
        encodedToken,
        restaurantId,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Hola(),
        ),
      );
    } else if (response.statusCode == 401) {
      print('Credenciales incorrectas. Mensaje del servidor: ${response.body}');
      setState(() {
        errorMessage = 'Credenciales incorrectas, por favor intenta de nuevo.';
      });
    } else {
      print('Error al iniciar sesión. Mensaje del servidor: ${response.body}');
      setState(() {
        errorMessage = 'Error al iniciar sesión. Por favor, intenta de nuevo.';
      });
    }
  }

  void _register(BuildContext context) {
    Navigator.pushNamed(context, '/registrar');
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
                left: 64 * fem,
                top: 264 * fem,
                child: Align(
                  child: SizedBox(
                    width: 98 * fem,
                    height: 13 * fem,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          decoration: TextDecoration.underline,
                          color: Color(0x8effffff),
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
                left: 32 * fem,
                top: 413 * fem,
                child: TextButton(
                  onPressed: () {
                    _handleLogin(context);
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
                        'Iniciar sesión',
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

            ],
          ),
        ),
      ),
    );
  }
}



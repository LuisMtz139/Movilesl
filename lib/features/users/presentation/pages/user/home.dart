import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/users/presentation/pages/user/user2/otro/products-cuadro.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OtherScene extends StatefulWidget {
  @override
  _OtherSceneState createState() => _OtherSceneState();
}

class _OtherSceneState extends State<OtherScene> {
  List<dynamic> restaurantes = [];

  String token = '';

  @override
  void initState() {
    super.initState();
    _fetchDataFromUrl();
    // Get the token from shared preferences

  }


  Future<void> _fetchDataFromUrl() async {
    try {
      print('Entré al listado');
      final prefs = await SharedPreferences.getInstance();
      String? tokenJson = prefs.getString('token');
      if (tokenJson != null) {
        Map<String, dynamic> tokenMap = json.decode(tokenJson);
        String token = tokenMap['encode_token'];
        print('Tokensss: $token');
        var headers = {
          'Authorization': 'Bearer $token',
        };
        var request = http.Request(
          'GET',
          Uri.parse('https://mobil-back-upbu-production-160d.up.railway.app/api/restaurants/list'),
        );
        request.headers.addAll(headers);
        http.StreamedResponse response = await request.send();
        if (response.statusCode == 200) {
          String responseBody = await response.stream.bytesToString();
          setState(() {
            restaurantes = json.decode(responseBody);
          });
        } else {
          print('Error al obtener datos: ${response.reasonPhrase}');
        }
      } else {
        print('Token not found in SharedPreferences.');
      }
    } catch (error) {
      print('Error: $error');
    }
  }



  double calculateFontSize(double fem, double ffem, double size) {
    return size * ffem;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(

      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(11 * fem, 9 * fem, 9 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color:  Color(0xff2e2e2e),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 299 * fem,
                height: 127 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffe19234),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 4 * fem,
                      top: 4 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 291 * fem,
                          height: 118 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6 * fem),
                              color: const Color(0x1c797979),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 75 * fem,
                      top: 20 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 141 * fem,
                          height: 14 * fem,
                          child: Text(

                            'Mario Alfredo Mendez Diaz',
                            style: GoogleFonts.inter(
                              fontSize: 11 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31 * fem,
                      top: 97 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 180 * fem,
                          height: 14 * fem,
                          child: Text(
                            'Unniversidad politecnica de chiapas',
                            style: GoogleFonts.inter(
                              fontSize: 11 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 11.75 * fem,
                      top: 97 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 10.5 * fem,
                          height: 14 * fem,
                          child: Image.asset(
                            'assets/usuarios-compradores/images/geo-alt-1.png',
                            width: 10.5 * fem,
                            height: 14 * fem,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 15 * fem,
                      top: 52 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 28 * fem,
                          height: 22 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22 * fem,
                      top: 55 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 14 * fem,
                          height: 16 * fem,
                          child: Image.asset(
                            'assets/usuarios-compradores/images/bag-check-1.png',
                            width: 14 * fem,
                            height: 16 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21 * fem,
              ),

              // Mostrar datos de la solicitud HTTP en contenedores
              Column(
                children: [
                  for (var restaurante in restaurantes)
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              print('Selected restaurant ID: ${restaurante['id']}');
                              int selectedId = restaurante['id'];
                              print("entreeeeeeeeeeeeee");
                              Navigator.push(

                                context,
                                MaterialPageRoute(builder: (context) => ProductsByID(selectedRestaurantId: selectedId)),
                              );
                            },

                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(16 * fem),
                              width: 299 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: _getImageProvider(restaurante['image']),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Establecimiento: ${restaurante['name_restaurant']}',
                                    style: GoogleFonts.inter(
                                      fontSize: calculateFontSize(13, ffem, fem),
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: calculateFontSize(8, ffem, fem)),
                                  Text(
                                    restaurante['description'],
                                    style: GoogleFonts.inter(
                                      fontSize: calculateFontSize(14, ffem, fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: calculateFontSize(8, ffem, fem)),
                                  Text(
                                    'Dirección: ${restaurante['direccion']}',
                                    style: GoogleFonts.inter(
                                      fontSize: calculateFontSize(14, ffem, fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: calculateFontSize(12, ffem, fem)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: calculateFontSize(21, ffem, fem),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  ImageProvider _getImageProvider(String imageUrl) {
    try {
      return NetworkImage(imageUrl);
    } catch (e) {
      // En caso de error al cargar la imagen desde la URL, utiliza la imagen de respaldo local
      return AssetImage('assets/usuarios-compradores/images/rectangle-2-bg.png');
    }
  }
}

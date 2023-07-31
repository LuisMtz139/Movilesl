import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import '../Users/products-cuadro.dart';
import '../../services/User/serviceInicio.dart';
import 'dart:convert';
import '../../services/User/listar.dart'; // Importar el archivo listar.dart

class OtherScene extends StatefulWidget {
  @override
  _OtherSceneState createState() => _OtherSceneState();
}

class _OtherSceneState extends State<OtherScene> {
  List<dynamic> restaurantes = [];

  @override
  void initState() {
    super.initState();
    // Obtener los datos al cargar la escena
    fetchData(ServiceInicio.getToken()).then((restaurantes) {
      setState(() {
        this.restaurantes = restaurantes;
      });
    });
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
        decoration: BoxDecoration(
          color: Color(0xff2e2e2e),
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
                  color: Color(0xffe19234),
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
                              color: Color(0x1c797979),
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
                              color: Color(0xff000000),
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
                              color: Color(0xff000000),
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
                              color: Color(0xffffffff),
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
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              // Print the selected restaurant ID to the console
                              print('Selected restaurant ID: ${restaurante['id']}');

                              // Save the selected restaurant ID to _selectedRestaurantId
                              int selectedId = restaurante['id'];

                              // Navigate to the 'Scene' widget and pass the selected ID as argument
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Scene(selectedRestaurantId: selectedId),
                                ),
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
                                    'Estabeclimiento: ${restaurante['name_restaurant']}',

                                    style: GoogleFonts.inter(
                                      fontSize: 13 * ffem,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: 8 * fem),
                                  Text(
                                    restaurante['description'],
                                    style: GoogleFonts.inter(
                                      fontSize: 14 * ffem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: 8 * fem),
                                  Text(
                                    'Dirección: ${restaurante['direccion']}',
                                    style: GoogleFonts.inter(
                                      fontSize: 14 * ffem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(height: 12 * fem),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21 * fem,
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

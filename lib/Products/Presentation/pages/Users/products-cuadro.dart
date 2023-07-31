import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myapp/utils.dart';
import '../../services/User/serviceInicio.dart';
import '/Products/Presentation/pages/Users/compra.dart';
import '../../services/User/product-service.dart';

class Scene extends StatefulWidget {
  final int? selectedRestaurantId;

  Scene({required this.selectedRestaurantId});

  @override
  _SceneState createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  List<dynamic> products = [];
  Map<int, int> buttonPressCount = {}; // Cambiado a Mapa para contabilizar de forma individual

  @override
  void initState() {
    super.initState();
    fetchProducts();
    loadButtonPressCount();
  }

  void fetchProducts() async {
    List<dynamic> productList = await ProductService.fetchProducts(widget.selectedRestaurantId ?? 0);
    setState(() {
      products = productList;
    });
  }

  void loadButtonPressCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var product in products) {
      int? storedCount = prefs.getInt('buttonPressCount_${product['id']}');
      setState(() {
        buttonPressCount[product['id']] = storedCount ?? 0;
      });
    }
  }

  void incrementButtonPressCount(int productId) async {
    setState(() {
      buttonPressCount[productId] = (buttonPressCount[productId] ?? 0) + 1;
      print('Botón presionado ${buttonPressCount[productId]} veces para el producto $productId');
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('buttonPressCount_$productId', buttonPressCount[productId]!);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    String restaurantNameWithId = 'RESTAURANTE1';
    if (widget.selectedRestaurantId != null) {
      restaurantNameWithId += ' (ID: ${widget.selectedRestaurantId.toString()})';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(

          'Detalles del Restaurante',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff2e2e2e),
      ),
      backgroundColor: Color(0xff2e2d2d),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(4 * fem, 20 * fem, 6 * fem, 12 * fem),
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/usuarios-compradores/images/rectangle-6-bg-dnw.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(1.25 * fem, 0 * fem, 0 * fem, 85.37 * fem),
                    width: 17.5 * fem,
                    height: 50 * fem,
                  ),
                  Text(
                    restaurantNameWithId,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: products.map((product) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 11 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 12 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                incrementButtonPressCount(product['id']); // Paso el id del producto
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 36 * fem),
                                width: 148 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0x0cffffff),
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                      width: 148 * fem,
                                      height: 81 * fem,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10 * fem),
                                          topRight: Radius.circular(10 * fem),
                                          bottomRight: Radius.circular(1 * fem),
                                          bottomLeft: Radius.circular(1 * fem),
                                        ),
                                        child: Image.network(
                                          product['image_url'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      child: Text(
                                        product['name'],
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 2 * fem),
                                      child: Text(
                                        'Precio: ${product['price']}\$',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 8 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 136 * fem,
                                      ),
                                      child: Text(
                                        product['description'],
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 8 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(6 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              height: 32 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 129 * fem, 0 * fem),
                    width: 32 * fem,
                    height: 32 * fem,
                    child: Image.asset(
                      'assets/usuarios-compradores/images/auto-group-jme7.png',
                      width: 32 * fem,
                      height: 32 * fem,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Compra()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6 * fem, 8 * fem, 6 * fem, 9 * fem),
                      width: 141 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Text(
                        'Proceder al pago',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


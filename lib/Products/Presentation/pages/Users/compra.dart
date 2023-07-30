import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Compra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(6 * fem, 8 * fem, 6 * fem, 25 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff2e2d2d),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              padding: EdgeInsets.fromLTRB(10.25 * fem, 4.37 * fem, 10.25 * fem, 4.37 * fem),
              width: double.infinity,
              height: 127 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/usuarios-compradores/images/rectangle-6-bg.png',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 17.5 * fem,
                  height: 11.25 * fem,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 270 * fem, 107 * fem),
                    child: Image.asset(
                      'assets/usuarios-compradores/images/arrow-left-2.png',
                      width: 17.5 * fem,
                      height: 11.25 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 22 * fem),
              padding: EdgeInsets.fromLTRB(4 * fem, 8 * fem, 5 * fem, 7 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffe29235),
                borderRadius: BorderRadius.circular(5 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 19 * fem),
                    child: Text(
                      'PEDIDO',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 226 * fem),
                    padding: EdgeInsets.fromLTRB(5 * fem, 7 * fem, 5 * fem, 7 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x93ffffff),
                      borderRadius: BorderRadius.circular(5 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                          child: Text(
                            'Quesadilla de quesillo  \$15',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 120 * fem, 0 * fem),
                          width: double.infinity,
                          height: 23 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 35 * fem, 0 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17 * fem, 0 * fem),
                                      child: Text(
                                        'Cantidad: 2',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 21 * fem,
                                      height: 21 * fem,
                                      child: Image.asset(
                                        'assets/usuarios-compradores/images/plus-lg-1.png',
                                        width: 21 * fem,
                                        height: 21 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 26 * fem,
                                height: 23 * fem,
                                child: Image.asset(
                                  'assets/usuarios-compradores/images/auto-group-rnxq.png',
                                  width: 26 * fem,
                                  height: 23 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'TOTAL: \$30',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupb5fm2qm (qVV837dQ6Rnf7TXPnb5fM)
              width: double.infinity,
              height: 32*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup51j7n4F (qVVF7kAX6ip6Coks351J7)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.94*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 73*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5*fem),
                        ),
                        child: Center(
                          child: Text(
                            'ELIMINAR',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // house11xb (6:45)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.94*fem, 1.61*fem),
                    width: 28.13*fem,
                    height: 25.86*fem,
                    child: Image.asset(
                      'assets/usuarios-compradores/images/house-1.png',
                      width: 28.13*fem,
                      height: 25.86*fem,
                    ),
                  ),
                  TextButton(
                    // autogroupxmyb81d (qVVJceLSNZV1YWTdtXmYB)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 66*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Pagar',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
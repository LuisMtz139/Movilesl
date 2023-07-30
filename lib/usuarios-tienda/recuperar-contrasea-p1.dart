import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // recuperarcontraseap1qGK (75:217)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // emailexamplecomjcb (75:218)
              left: 60*fem,
              top: 269*fem,
              child: Align(
                child: SizedBox(
                  width: 98*fem,
                  height: 13*fem,
                  child: Text(
                    'Email@example.com',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      decoration: TextDecoration.underline,
                      color: Color(0x8effffff),
                      decorationColor: Color(0x8effffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupwkjso6f (qVYuWeG9FXZ4yGixXWkJs)
              left: 32*fem,
              top: 433*fem,
              child: Container(
                width: 254*fem,
                height: 35*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xffe29235)),
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Center(
                  child: Text(
                    'RECUPERAR CONTRASEÑA',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line1rKq (75:221)
              left: 60*fem,
              top: 284*fem,
              child: Align(
                child: SizedBox(
                  width: 194*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // correoy9Z (75:222)
              left: 60*fem,
              top: 243*fem,
              child: Align(
                child: SizedBox(
                  width: 42*fem,
                  height: 13*fem,
                  child: Text(
                    'CORREO',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupmchmfYB (qVYq1mkpUJh2gE779MCHM)
              left: 6.2488708496*fem,
              top: 10*fem,
              child: Container(
                width: 132.75*fem,
                height: 13*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // arrowleft1Pj5 (75:224)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 10.25*fem, 0*fem),
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/arrow-left-1-8tF.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                    Text(
                      // recuperarcontraseahUs (75:223)
                      'Recuperar contraseña',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 10*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0x96ffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}
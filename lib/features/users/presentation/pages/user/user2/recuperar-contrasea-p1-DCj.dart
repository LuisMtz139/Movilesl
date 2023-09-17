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
        // recuperarcontraseap13DH (75:226)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupm7sfMjm (qVZcVTym2DQz6MFAEM7SF)
              left: 29*fem,
              top: 490*fem,
              child: Container(
                width: 254*fem,
                height: 35*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xffe29235)),
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Center(
                  child: Text(
                    'CONFIRMAR',
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
              // autogroupcrpkRDq (qVZRVnJJT1JfbaBJQcRpK)
              left: 6.2488708496*fem,
              top: 10*fem,
              child: Container(
                width: 132.75*fem,
                height: 13*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // arrowleft1k1D (75:230)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 10.25*fem, 0*fem),
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/arrow-left-1-fD9.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                    Text(
                      // recuperarcontraseaTgK (75:229)
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
            Positioned(
              // holamarioalfrdomendezdiazQLf (75:232)
              left: 34*fem,
              top: 103*fem,
              child: Align(
                child: SizedBox(
                  width: 147*fem,
                  height: 13*fem,
                  child: Text(
                    'Hola Mario Alfrdo Mendez Diaz',
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
              // tmd (75:233)
              left: 42*fem,
              top: 255*fem,
              child: Align(
                child: SizedBox(
                  width: 60*fem,
                  height: 13*fem,
                  child: Text(
                    '************',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0x8effffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupqax1bR9 (qVZXVcJjVJTPKdfmaqAX1)
              left: 42*fem,
              top: 318*fem,
              child: Container(
                width: 194*fem,
                height: 13*fem,
                child: Text(
                  '************',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 10*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: Color(0x8effffff),
                  ),
                ),
              ),
            ),
            Positioned(
              // line6Hom (75:235)
              left: 42*fem,
              top: 271*fem,
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
              // contraseabZZ (75:236)
              left: 42*fem,
              top: 238*fem,
              child: Align(
                child: SizedBox(
                  width: 69*fem,
                  height: 13*fem,
                  child: Text(
                    'CONTRASEÑA',
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
              // confirmarcontrasea4xw (75:238)
              left: 42*fem,
              top: 297*fem,
              child: Align(
                child: SizedBox(
                  width: 131*fem,
                  height: 13*fem,
                  child: Text(
                    'CONFIRMAR CONTRASEÑA',
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
          ],
        ),
      ),
          );
  }
}
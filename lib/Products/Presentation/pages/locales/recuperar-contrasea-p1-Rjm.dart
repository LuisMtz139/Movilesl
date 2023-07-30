import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class recuperarC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // recuperarcontraseap1u2w (75:82)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupclfqcCF (qVWLRG2BrHd1yDiUZcLFq)
              left: 29*fem,
              top: 490*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
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
            ),
            Positioned(
              // autogrouplqpsq51 (qVWA6DtzwzySn1G16Lqps)
              left: 6.2489013672*fem,
              top: 10*fem,
              child: Container(
                width: 132.75*fem,
                height: 13*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // arrowleft1XyR (75:89)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 10.25*fem, 0*fem),
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-compradores/images/arrow-left-1-asq.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                    Text(
                      // recuperarcontrasea3Ry (75:88)
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
              // holamarioalfrdomendezdiazNj9 (75:91)
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
              // F2F (75:92)
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
              // autogroupzaxzLpP (qVWG63uRzJ8AW4kUGZaXZ)
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
              // line6pUf (75:94)
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
              // contraseaLT1 (75:95)
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
              // confirmarcontraseaRDZ (75:97)
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
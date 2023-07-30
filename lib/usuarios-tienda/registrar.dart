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
        // registrarzHD (75:194)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // emailexamplecomKaP (75:195)
              left: 63*fem,
              top: 125*fem,
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
              // marioalfredomendezdiaz1CK (75:196)
              left: 63*fem,
              top: 183*fem,
              child: Align(
                child: SizedBox(
                  width: 127*fem,
                  height: 13*fem,
                  child: Text(
                    'Mario alfredo Mendez Diaz',
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
              // W95 (75:197)
              left: 63*fem,
              top: 237*fem,
              child: Align(
                child: SizedBox(
                  width: 61*fem,
                  height: 13*fem,
                  child: Text(
                    '2292442213',
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
              // ncP (75:198)
              left: 63*fem,
              top: 296*fem,
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
              // autogroupfjaogxf (qVXJe9LjbZQWeHScqfjao)
              left: 63*fem,
              top: 359*fem,
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
              // autogrouphcupPcB (qVXXU7JSGJXtDrgndhCUP)
              left: 32*fem,
              top: 489*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(78*fem, 8*fem, 20.25*fem, 7*fem),
                width: 254*fem,
                height: 35*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff3550e2)),
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // continuarfJo (75:201)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.25*fem, 0*fem),
                      child: Text(
                        'CONTINUAR',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // arrowleft2ZQB (75:262)
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/arrow-left-2-Ywq.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // line1HLB (75:202)
              left: 63*fem,
              top: 140*fem,
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
              // line2oJX (75:203)
              left: 63*fem,
              top: 312*fem,
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
              // correoL3Z (75:204)
              left: 63*fem,
              top: 99*fem,
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
              // contrasea2wy (75:205)
              left: 63*fem,
              top: 279*fem,
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
              // line4LSs (75:206)
              left: 63*fem,
              top: 199*fem,
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
              // nombreGLX (75:207)
              left: 63*fem,
              top: 166*fem,
              child: Align(
                child: SizedBox(
                  width: 43*fem,
                  height: 13*fem,
                  child: Text(
                    'NOMBRE',
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
              // line5BCb (75:208)
              left: 63*fem,
              top: 253*fem,
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
              // numerotelefonicoJY7 (75:209)
              left: 63*fem,
              top: 220*fem,
              child: Align(
                child: SizedBox(
                  width: 110*fem,
                  height: 13*fem,
                  child: Text(
                    'NUMERO TELEFONICO',
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
              // confirmarcontraseabGK (75:211)
              left: 63*fem,
              top: 338*fem,
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
            Positioned(
              // autogroupyoh9goZ (qVXByfn2tLo3cfLmJyoh9)
              left: 6.2488822937*fem,
              top: 10*fem,
              child: Container(
                width: 81.75*fem,
                height: 13*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // arrowleft1QzT (75:215)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 10.25*fem, 0*fem),
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/arrow-left-1.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                    Text(
                      // registrarseL7R (75:212)
                      'Registrarse',
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
              // autogrouptuhvUUX (qVXQdyMAdrZENLw61tUHV)
              left: 69*fem,
              top: 414*fem,
              child: Container(
                width: 116*fem,
                height: 10*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle53CvK (75:214)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1*fem),
                      width: 9*fem,
                      height: 9*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                      ),
                    ),
                    Container(
                      // aceptoterminoycondicionesjQT (75:213)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Acepto termino y condiciones',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 7*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff7784ff),
                        ),
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
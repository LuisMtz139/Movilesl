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
        // iniciarsesiond8b (75:181)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // emailexamplecom9Mq (75:182)
              left: 64*fem,
              top: 201*fem,
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
              // autogroupzkdzEPH (qVWgF2Kj4i6EECNC4ZKdZ)
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
                    'INICIAR SESION',
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
              // autogroupwsqbJtw (qVWmA3oU91NEay7fAWsQB)
              left: 32*fem,
              top: 489*fem,
              child: Container(
                width: 254*fem,
                height: 35*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff3550e2)),
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Center(
                  child: Text(
                    'REGISTRARSE',
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
              // line1m1q (75:187)
              left: 64*fem,
              top: 216*fem,
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
              // line2TfM (75:188)
              left: 64*fem,
              top: 292*fem,
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
              // correoP3D (75:189)
              left: 64*fem,
              top: 175*fem,
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
              // iniciarsesiontVm (75:190)
              left: 34*fem,
              top: 10*fem,
              child: Align(
                child: SizedBox(
                  width: 62*fem,
                  height: 13*fem,
                  child: Text(
                    'Iniciar sesion',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0x96ffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // contraseamJf (75:191)
              left: 64*fem,
              top: 259*fem,
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
              // olvidastetucontraseaFUj (75:192)
              left: 64*fem,
              top: 329*fem,
              child: Align(
                child: SizedBox(
                  width: 85*fem,
                  height: 9*fem,
                  child: Text(
                    '¿olvidaste tu contraseña?',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 7*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff7784ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // KjV (75:193)
              left: 63*fem,
              top: 279*fem,
              child: Align(
                child: SizedBox(
                  width: 65*fem,
                  height: 13*fem,
                  child: Text(
                    '*************',
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
          ],
        ),
      ),
          );
  }
}
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
        // registrarM5h (75:239)
        width: double.infinity,
        height: 568*fem,
        decoration: BoxDecoration (
          color: Color(0xff2e2e2e),
        ),
        child: Stack(
          children: [
            Positioned(
              // emailexamplecomFRy (75:240)
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
              // avenidalaspalmasperuiaT (75:241)
              left: 63*fem,
              top: 183*fem,
              child: Align(
                child: SizedBox(
                  width: 120*fem,
                  height: 13*fem,
                  child: Text(
                    'Avenida las palmas, peru ',
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
              // autogroupb3g31ZZ (qVYS2S4VpWHGjL4JyB3G3)
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
              // line1sLs (75:247)
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
              // nombredelrestauranteP4K (75:249)
              left: 63*fem,
              top: 99*fem,
              child: Align(
                child: SizedBox(
                  width: 139*fem,
                  height: 13*fem,
                  child: Text(
                    'NOMBRE DEL RESTAURANTE',
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
              // line4skB (75:251)
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
              // direccionbgB (75:252)
              left: 63*fem,
              top: 166*fem,
              child: Align(
                child: SizedBox(
                  width: 55*fem,
                  height: 13*fem,
                  child: Text(
                    'DIRECCION',
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
              // imagenrestaurantetfH (75:265)
              left: 63*fem,
              top: 228*fem,
              child: Align(
                child: SizedBox(
                  width: 114*fem,
                  height: 13*fem,
                  child: Text(
                    'IMAGEN RESTAURANTE',
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
              // sepuedeomitirespepasoyconfigur (75:270)
              left: 63*fem,
              top: 279*fem,
              child: Align(
                child: SizedBox(
                  width: 120*fem,
                  height: 7*fem,
                  child: Text(
                    'Se puede omitir espe paso y configurarlo despues ',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 5*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupp3nx4TH (qVY72yhoCEdzbofpup3NX)
              left: 6.2488708496*fem,
              top: 10*fem,
              child: Container(
                width: 81.75*fem,
                height: 13*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // arrowleft1Nym (75:260)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 10.25*fem, 0*fem),
                      width: 17.5*fem,
                      height: 11.25*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/arrow-left-1-zjR.png',
                        width: 17.5*fem,
                        height: 11.25*fem,
                      ),
                    ),
                    Text(
                      // registrarseGpF (75:257)
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
              // autogroupkjjtDDh (qVYLSm2V5HYX4zhTWkJJT)
              left: 69*fem,
              top: 414*fem,
              child: Container(
                width: 116*fem,
                height: 9*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle53XkB (75:259)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                      width: 9*fem,
                      height: 9*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                      ),
                    ),
                    Text(
                      // aceptoterminoycondiciones4EK (75:258)
                      'Acepto termino y condiciones',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 7*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff7784ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupjzrfPnP (qVYE2n3djuyqHD5NcjZrf)
              left: 63*fem,
              top: 250*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 97*fem, 5*fem),
                width: 194*fem,
                height: 25*fem,
                decoration: BoxDecoration (
                  color: Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // imageregular1rvs (75:267)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                      width: 16*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/usuarios-tienda/images/image-regular-1.png',
                        width: 16*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // subirimagenaby (75:269)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Subir imagen ',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 10*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
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
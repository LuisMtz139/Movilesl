import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SceneP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 320;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // productslistnib (14:17)
        padding: EdgeInsets.fromLTRB(6*fem, 8*fem, 6*fem, 12*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff2e2d2d),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupaaoyHQT (qVSi2JbNiFGH7SaY8aAoy)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(8*fem, 6.37*fem, 8*fem, 9*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15*fem),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/usuarios-compradores/images/rectangle-6-bg-tfZ.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // arrowleft1M9R (14:28)
                    margin: EdgeInsets.fromLTRB(1.25*fem, 0*fem, 0*fem, 85.37*fem),
                    width: 17.5*fem,
                    height: 11.25*fem,
                    child: Image.asset(
                      'assets/usuarios-compradores/images/arrow-left-1-jpb.png',
                      width: 17.5*fem,
                      height: 11.25*fem,
                    ),
                  ),
                  Text(
                    // restaurante1rM5 (14:27)
                    'RESTAURANTE1sss',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupe5r9B8T (qVSrmZ2AtqwaThLUGE5R9)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 83*fem, 0*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0x0cd9d9d9),
                borderRadius: BorderRadius.circular(5*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // image1s1H (14:40)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                    width: 83*fem,
                    height: 69*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(5*fem),
                        bottomRight: Radius.circular(1*fem),
                        bottomLeft: Radius.circular(5*fem),
                      ),
                      child: Image.asset(
                        'assets/usuarios-compradores/images/image-1-sc3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // autogroup2oc3Mh9 (qVSybgySXHvEKD6At2oc3)
                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // pozolesvP (14:41)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                          child: Text(
                            'Pozoleeeeeee ',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // precio60zEK (14:44)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                          child: Text(
                            'Precio: 60\$',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // pozolerojoquecontienemaizpollo (17:50)
                          constraints: BoxConstraints (
                            maxWidth: 136*fem,
                          ),
                          child: Text(
                            'pozole rojo que contiene maiz, pollo\nrabano y caldo no se que mas xd',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle47ayD (14:37)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              width: double.infinity,
              height: 69*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(5*fem),
                color: Color(0xffd9d9d9),
              ),
            ),
            Container(
              // rectangle48iZd (14:38)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              width: double.infinity,
              height: 69*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(5*fem),
                color: Color(0xffd9d9d9),
              ),
            ),
            Container(
              // rectangle49SkX (14:39)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 44*fem),
              width: double.infinity,
              height: 69*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(5*fem),
                color: Color(0xffd9d9d9),
              ),
            ),
            Container(
              // autogroupyvusN8P (qVTABDgUoRcakG2QyyVUs)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: 32*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdq2w4mu (qVTG6DVdP75i4Ngxcdq2w)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 0*fem),
                    width: 32*fem,
                    height: 32*fem,
                    child: Image.asset(
                      'assets/usuarios-compradores/images/auto-group-dq2w.png',
                      width: 32*fem,
                      height: 32*fem,
                    ),
                  ),
                  Container(
                    // autogroupynymMFD (qVTKRTGyjiPSaBjtNynym)
                    padding: EdgeInsets.fromLTRB(6*fem, 8*fem, 6*fem, 9*fem),
                    width: 141*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5*fem),
                    ),
                    child: Text(
                      'Proceder al pago',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
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
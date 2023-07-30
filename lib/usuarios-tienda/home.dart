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
        // homeunX (75:272)
        width: double.infinity,
        height: 568*fem,
        child: Image.asset(
          'assets/usuarios-tienda/images/home-qbD.png',
          width: 320*fem,
          height: 568*fem,
        ),
      ),
          );
  }
}
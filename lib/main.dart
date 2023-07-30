import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/Products/Presentation/pages/Users/home.dart';
// import 'package:myapp/usuarios-compradores/iniciar-sesion.dart';
// import 'package:myapp/usuarios-compradores/registrar.dart';
// import 'package:myapp/usuarios-compradores/products-cuadro.dart';
// import 'package:myapp/usuarios-compradores/products-list.dart';
// import 'package:myapp/usuarios-compradores/compra.dart';
// import 'package:myapp/usuarios-compradores/recuperar-contrasea-p1.dart';
// import 'package:myapp/usuarios-compradores/recuperar-contrasea-p1-Rjm.dart';
// import 'package:myapp/usuarios-tienda/iniciar-sesion.dart';
// import 'package:myapp/usuarios-tienda/registrar.dart';
// import 'package:myapp/usuarios-tienda/registrar-Yyu.dart';
// import 'package:myapp/usuarios-tienda/recuperar-contrasea-p1.dart';
// import 'package:myapp/usuarios-tienda/recuperar-contrasea-p1-DCj.dart';
// import 'package:myapp/usuarios-tienda/home.dart';
// import 'package:myapp/usuarios-tienda/home-xYF.dart';
// import 'package:myapp/usuarios-tienda/home-mGj.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}

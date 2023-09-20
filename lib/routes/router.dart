import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/users/presentation/pages/user/iniciar-sesion.dart';
import 'package:myapp/features/users/presentation/pages/user/registrar.dart';

import '../features/users/data/datasource/user_data_sorce.dart';
import '../features/users/presentation/pages/user/home.dart';

final _publicRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => Inicio(),
  ),
  GoRoute(
    path: '/registrarte',
    builder: (context, state) => RegistrarScene(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => OtherScene(),
  ),
]);

class RouterSimpleCuibit extends Cubit<GoRouter> {
  RouterSimpleCuibit() : super(_publicRouter);

  void goBack() {
    state.pop();
  }

  void goHome(){
    state.go(
      '/home',
    );
  }

  void goRegister() {
    state.go(
      '/registrarte',
    );
  }

}

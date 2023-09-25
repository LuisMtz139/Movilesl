
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/users/presentation/pages/restaurant/IniciarSesion.dart';
import 'package:myapp/features/users/presentation/pages/restaurant/listaProducts.dart';
import 'package:myapp/features/users/presentation/pages/restaurant/registrar-Yyu.dart';
import 'package:myapp/features/users/presentation/pages/user/home.dart';
import 'package:myapp/features/users/presentation/pages/user/iniciar-sesion.dart';
import 'package:myapp/features/users/presentation/pages/user/registrar.dart';





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
  GoRoute(
    path: '/restaurant',
    builder: (context, state) => InicioTienda(),
  ),
  GoRoute(
    path: '/listar-producctos',
    builder: (context, state) => ProductListView(),
  ),
  GoRoute(
    path: '/registrar-restaurante',
    builder: (context, state) => RestaurantRegistrationView(),
  )
]);

class RouterSimpleCuibit extends Cubit<GoRouter> {
  RouterSimpleCuibit() : super(_publicRouter);

  void goBack() {
    state.pop();
  }

  void goInicio(){
    state.go('/');
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
   void goRestaurant() {
    state.go(
      '/restaurant',
    );
  }
   void goRegisterRestaurant() {
    state.go(
      '/registrar-restaurante',
    );
  }
   void goListaProductos() {
    state.go(
      '/listar-producctos',
    );
  }

}

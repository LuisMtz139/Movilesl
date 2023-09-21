import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/routes/router.dart';

import 'features/users/domain/repository/UserRepository.dart';
import 'features/users/domain/usecase/user/LoginUserUseCase.dart';
import 'features/users/presentation/blocs/user/iniciar-sesion/iniciar_sesion_bloc.dart';
import 'features/users/presentation/blocs/user/registrar/registrar_bloc.dart';


void main(){
  runApp(const BlocsProviders());
}




class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RouterSimpleCuibit()),
        BlocProvider(create: (context) => IniciarSesionBloc(LoginUseCase(UserRepository())))      ],
      child: const MainApp(),
    );
  }
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

  final appRouter = context.watch<RouterSimpleCuibit>().state;

    return MaterialApp.router(
      title: 'MainApp',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/users/domain/usecase/user/RegisterUserUseCase.dart';
import 'package:myapp/routes/router.dart';
import 'package:myapp/usecase_config.dart';
import 'package:myapp/usecase_login_user_config.dart';


import 'features/users/presentation/blocs/user/iniciar-sesion/iniciar_sesion_bloc.dart';
import 'features/users/presentation/blocs/user/registrar/registrar_bloc.dart';



UsecaseConfig registerUserUseCase = UsecaseConfig();
UsecaseLoginUserConfig registerUsecaseLoginUserConfig = UsecaseLoginUserConfig();

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
        BlocProvider<RegistrarBloc>(
          create: (BuildContext context) => RegistrarBloc(registerUserUseCase: registerUserUseCase.registerUserUseCase!)
        ), 
         BlocProvider<IniciarSesionBloc>(
          create: (BuildContext context) => IniciarSesionBloc(context: context, loginUseCase: registerUsecaseLoginUserConfig.loginUseCase!)
        ),
        ],
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
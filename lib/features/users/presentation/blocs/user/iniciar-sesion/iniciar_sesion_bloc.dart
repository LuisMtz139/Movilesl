import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/usecase/user/LoginUserUseCase.dart';

part 'iniciar_sesion_event.dart';
part 'iniciar_sesion_state.dart';

class IniciarSesionBloc extends Bloc<IniciarSesionEvent, IniciarSesionState> {
  final LoginUseCase loginUseCase;
  IniciarSesionBloc({required this.loginUseCase}) : super(IniciarSesionInitial()) {
    on<IniciarSesionEvent>((event, emit) async{
      if(event is onIniciar){
        await loginUseCase.execute(event.email,event.password);
        print('entrrererere');
      }
    });
  }
}

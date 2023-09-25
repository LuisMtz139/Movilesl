import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';


import '../../../../domain/usecase/user/LoginUserUseCase.dart';

part 'iniciar_sesion_event.dart';
part 'iniciar_sesion_state.dart';

class IniciarSesionBloc extends Bloc<IniciarSesionEvent, IniciarSesionState> {
  final BuildContext context;
  final LoginUseCase loginUseCase;

  Future<bool> login(String email, String password) async {
    try {
        print('entrrererere');
        await loginUseCase.execute(email, password);
        return true;
      } catch(e) {
        emit(LoginError(error: e.toString()));
        return false;
      }
  }

  IniciarSesionBloc({required this.context, required this.loginUseCase}) : super(IniciarSesionInitial()) {
    on<IniciarSesionEvent>((event, emit) async{
      if(event is onIniciar){
        
      }
    });
  }
}

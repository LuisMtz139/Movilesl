import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'iniciar_sesion_event.dart';
part 'iniciar_sesion_state.dart';

class IniciarSesionBloc extends Bloc<IniciarSesionEvent, IniciarSesionState> {
  IniciarSesionBloc() : super(IniciarSesionInitial()) {
    on<IniciarSesionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

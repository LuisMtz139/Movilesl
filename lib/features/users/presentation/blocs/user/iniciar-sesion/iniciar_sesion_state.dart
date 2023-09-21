part of 'iniciar_sesion_bloc.dart';

@immutable
abstract class IniciarSesionState {}

class IniciarSesionInitial extends IniciarSesionState {}

class LoginError extends IniciarSesionState {
  final String error;

  LoginError({required this.error});
}

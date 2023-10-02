part of 'iniciar_sesion_bloc.dart';

@immutable
abstract class IniciarSesionEvent {}

class onIniciar extends IniciarSesionEvent{
  final String email;
  final String password;

  onIniciar({required this.password, required this.email});
}
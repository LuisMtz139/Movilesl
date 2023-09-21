part of 'iniciar_sesion_bloc.dart';

@immutable
abstract class IniciarSesionEvent {}

class onIniciar extends IniciarSesionEvent{
  late final String email;
  late final String password;

  onIniciar({required this.password, required this.email});
}
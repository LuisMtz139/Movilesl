part of 'registrar_bloc.dart';

@immutable
abstract class RegistrarState {}

class RegistrarInitial extends RegistrarState {}

class RegisterError extends RegistrarState{
  final String error;

  RegisterError({required this.error});
}

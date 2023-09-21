part of 'registrar_bloc.dart';

@immutable
abstract class RegistrarEvent {}

class OnRegister extends RegistrarEvent {
  final User user;

  OnRegister({required this.user});
}

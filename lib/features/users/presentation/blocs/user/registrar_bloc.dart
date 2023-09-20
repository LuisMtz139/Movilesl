import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/usecase/user/RegisterUserUseCase.dart';

part 'registrar_event.dart';
part 'registrar_state.dart';

class RegistrarBloc extends Bloc<RegistrarEvent, RegistrarState> {
  final RegisterUserUseCase registerUserUseCase;

  RegistrarBloc({required this.registerUserUseCase}) : super(RegistrarInitial()) {
    on<RegistrarEvent>((event, emit) async {
      if(event is OnRegister) {
        await registerUserUseCase.execute(event.user);
      }
    });
  }
}

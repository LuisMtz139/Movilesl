

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/usecase/user/RegisterUserUseCase.dart';
part 'registrar_event.dart';
part 'registrar_state.dart';

class RegistrarBloc extends Bloc<RegistrarEvent, RegistrarState> {

  final BuildContext context;
  final RegisterUserUseCase registerUserUseCase;

  Future<bool> resgister(User user) async {
    try {
       print('entrrererere');
        await registerUserUseCase.execute(user);
        return true;
      } catch (e) {
       emit(RegisterError(error: e.toString()));
       return false;
      }
  }

  RegistrarBloc({required this.context,required this.registerUserUseCase}) : super(RegistrarInitial()) {
    
    on<RegistrarEvent>((event, emit) async {
      if(event is OnRegister) {
      
      }
    });
  }
}

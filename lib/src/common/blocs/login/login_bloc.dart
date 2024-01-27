import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ApiService _service;

  LoginBloc({
    required ApiService service,
  })  : _service = service,
        super(LoginInitial()) {
    on<LoginRequested>((event, emit) {
      final user = UserEntity(
        firstName: event.firstName,
        password: event.password,
      );
    });
  }
}

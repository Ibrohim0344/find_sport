import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final ApiService _service;

  RegisterBloc({
    required ApiService service,
  })  : _service = service,
        super(RegisterInitial()) {
    on<RegisterRequested>((event, emit) async {
      final user = UserEntity(
        firstName: event.firstName,
        lastName: event.lastName,
        phone: event.phone,
        password: event.password,
      );

      final response = await _service.register(user.toJson());
    });
  }
}

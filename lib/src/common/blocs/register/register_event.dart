part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterRequested extends RegisterEvent {
  final String firstName;
  final String lastName;
  final String phone;
  final String password;

  const RegisterRequested({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.password,
  });
}

part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginRequested extends LoginEvent {
  final String firstName;
  final String password;

  const LoginRequested({
    required this.firstName,
    required this.password,
  });
}

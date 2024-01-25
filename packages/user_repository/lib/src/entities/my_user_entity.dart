import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;

  const MyUserEntity({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  Map<String, Object?> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "password": password,
      };

  static MyUserEntity fromJson(Map<String, Object?> json) => MyUserEntity(
        firstName: json["first_name"] as String,
        lastName: json["last_name"] as String,
        phoneNumber: json["phone_number"] as String,
        password: json["password"] as String,
      );

  @override
  List<Object?> get props => [firstName, lastName, phoneNumber, password];
}

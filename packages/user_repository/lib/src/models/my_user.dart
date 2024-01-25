import 'package:equatable/equatable.dart';

import '../entities/entities.dart';

class MyUser extends Equatable {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;

  const MyUser({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  /// Empty user which represents an unauthenticated user.
  static const empty = MyUser(
    firstName: "",
    lastName: "",
    phoneNumber: "",
    password: "",
  );

  /// Modify MyUser parameters
  MyUser copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? password,
  }) =>
      MyUser(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
      );

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == MyUser.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != MyUser.empty;

  MyUserEntity toEntity() => MyUserEntity(
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        password: password,
      );

  static MyUser fromEntity(MyUserEntity entity) => MyUser(
        firstName: entity.firstName,
        lastName: entity.lastName,
        phoneNumber: entity.phoneNumber,
        password: entity.password,
      );

  @override
  List<Object?> get props => [firstName, lastName, phoneNumber, password];
}

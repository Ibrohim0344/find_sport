import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class MyUserEntity extends Equatable {
  @JsonKey(name: "firstname")
  final String firstName;

  @JsonKey(name: "lastname")
  final String lastName;

  @JsonKey(name: "phone")
  final String phone;

  @JsonKey(name: "password")
  final String password;

  const MyUserEntity({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.password,
  });

  factory MyUserEntity.fromJson(Map<String, dynamic> json) =>
      _$MyUserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MyUserEntityToJson(this);

  @override
  List<Object?> get props => [firstName, lastName, phone, password];
}

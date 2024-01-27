import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  @JsonKey(name: "firstname")
  final String? firstName;

  @JsonKey(name: "lastname")
  final String? lastName;

  @JsonKey(name: "phone")
  final String? phone;

  @JsonKey(name: "password")
  final String? password;

  const UserEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.password,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$MyUserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MyUserEntityToJson(this);

  @override
  List<Object?> get props => [firstName, lastName, phone, password];
}

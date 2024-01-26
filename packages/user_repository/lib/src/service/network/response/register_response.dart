import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  @JsonKey(name: "firstname")
  final String firstName;

  @JsonKey(name: "lastname")
  final String lastname;

  @JsonKey(name: "phone")
  final String phone;

  @JsonKey(name: "password")
  final String password;

  RegisterResponse({
    required this.firstName,
    required this.lastname,
    required this.phone,
    required this.password,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$MyUserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      firstName: json['firstname'] as String,
      lastName: json['lastname'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$MyUserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'phone': instance.phone,
      'password': instance.password,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterForm _$RegisterFormFromJson(Map<String, dynamic> json) => RegisterForm(
      data: RegisterData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterFormToJson(RegisterForm instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      firebaseUid: json['firebaseUid'] as String,
    );

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'firebaseUid': instance.firebaseUid,
    };

const _$UserRoleEnumMap = {
  UserRole.other: 'OTHER',
  UserRole.freshGraduate: 'FRESH_GRADUATE',
  UserRole.educator: 'EDUCATOR',
};

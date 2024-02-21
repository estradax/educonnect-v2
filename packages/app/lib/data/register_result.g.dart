// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResult _$RegisterResultFromJson(Map<String, dynamic> json) =>
    RegisterResult(
      data: RegisterResultData.fromJson(json['data'] as Map<String, dynamic>),
      meta: RegisterResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResultToJson(RegisterResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

RegisterResultData _$RegisterResultDataFromJson(Map<String, dynamic> json) =>
    RegisterResultData(
      id: json['id'] as int,
      attributes: RegisterResultAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResultDataToJson(RegisterResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

RegisterResultAttributes _$RegisterResultAttributesFromJson(
        Map<String, dynamic> json) =>
    RegisterResultAttributes(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      firebaseUid: json['firebaseUid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RegisterResultAttributesToJson(
        RegisterResultAttributes instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'firebaseUid': instance.firebaseUid,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.other: 'OTHER',
  UserRole.educator: 'EDUCATOR',
  UserRole.freshGraduate: 'FRESH_GRADUATE',
};

RegisterResultMeta _$RegisterResultMetaFromJson(Map<String, dynamic> json) =>
    RegisterResultMeta();

Map<String, dynamic> _$RegisterResultMetaToJson(RegisterResultMeta instance) =>
    <String, dynamic>{};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) => LoginResult(
      data: (json['data'] as List<dynamic>)
          .map((e) => LoginResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: LoginResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResultToJson(LoginResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

LoginResultData _$LoginResultDataFromJson(Map<String, dynamic> json) =>
    LoginResultData(
      id: json['id'] as int,
      attributes: LoginResultAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResultDataToJson(LoginResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

LoginResultAttributes _$LoginResultAttributesFromJson(
        Map<String, dynamic> json) =>
    LoginResultAttributes(
      fullName: json['fullName'] as String?,
      email: json['email'] as String,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      firebaseUid: json['firebaseUid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LoginResultAttributesToJson(
        LoginResultAttributes instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role],
      'firebaseUid': instance.firebaseUid,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.other: 'OTHER',
  UserRole.freshGraduate: 'FRESH_GRADUATE',
  UserRole.educator: 'EDUCATOR',
};

LoginResultMeta _$LoginResultMetaFromJson(Map<String, dynamic> json) =>
    LoginResultMeta(
      pagination: LoginResultPagination.fromJson(
          json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResultMetaToJson(LoginResultMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

LoginResultPagination _$LoginResultPaginationFromJson(
        Map<String, dynamic> json) =>
    LoginResultPagination(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      pageCount: json['pageCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$LoginResultPaginationToJson(
        LoginResultPagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };

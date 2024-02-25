// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolResult _$SchoolResultFromJson(Map<String, dynamic> json) => SchoolResult(
      data: (json['data'] as List<dynamic>)
          .map((e) => SchoolResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: SchoolResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolResultToJson(SchoolResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

SchoolResultData _$SchoolResultDataFromJson(Map<String, dynamic> json) =>
    SchoolResultData(
      id: json['id'] as int,
      attributes: SchoolResultAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolResultDataToJson(SchoolResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

SchoolResultAttributes _$SchoolResultAttributesFromJson(
        Map<String, dynamic> json) =>
    SchoolResultAttributes(
      name: json['name'] as String,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      level: $enumDecode(_$SchoolLevelEnumMap, json['level']),
    );

Map<String, dynamic> _$SchoolResultAttributesToJson(
        SchoolResultAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'level': _$SchoolLevelEnumMap[instance.level]!,
    };

const _$SchoolLevelEnumMap = {
  SchoolLevel.needTeachers: 'NEED_TEACHERS',
  SchoolLevel.needFacilities: 'NEED_FACILITIES',
  SchoolLevel.fullfilled: 'FULLFILLED',
};

SchoolResultMeta _$SchoolResultMetaFromJson(Map<String, dynamic> json) =>
    SchoolResultMeta(
      pagination: SchoolResultPagination.fromJson(
          json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolResultMetaToJson(SchoolResultMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

SchoolResultPagination _$SchoolResultPaginationFromJson(
        Map<String, dynamic> json) =>
    SchoolResultPagination(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      pageCount: json['pageCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$SchoolResultPaginationToJson(
        SchoolResultPagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };

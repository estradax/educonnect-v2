import 'package:json_annotation/json_annotation.dart';

part 'school_result.g.dart';

@JsonSerializable()
class SchoolResult {
    @JsonKey(name: "data")
    List<SchoolResultData> data;
    @JsonKey(name: "meta")
    SchoolResultMeta meta;

    SchoolResult({
        required this.data,
        required this.meta,
    });

    factory SchoolResult.fromJson(Map<String, dynamic> json) => _$SchoolResultFromJson(json);

    Map<String, dynamic> toJson() => _$SchoolResultToJson(this);
}

@JsonSerializable()
class SchoolResultData {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "attributes")
    SchoolResultAttributes attributes;

    SchoolResultData({
        required this.id,
        required this.attributes,
    });

    factory SchoolResultData.fromJson(Map<String, dynamic> json) => _$SchoolResultDataFromJson(json);

    Map<String, dynamic> toJson() => _$SchoolResultDataToJson(this);
}

@JsonSerializable()
class SchoolResultAttributes {
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "address")
    String address;
    @JsonKey(name: "createdAt")
    DateTime createdAt;
    @JsonKey(name: "updatedAt")
    DateTime updatedAt;
    @JsonKey(name: "publishedAt")
    DateTime publishedAt;
    @JsonKey(name: "level")
    SchoolLevel level;

    SchoolResultAttributes({
        required this.name,
        required this.address,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.level,
    });

    factory SchoolResultAttributes.fromJson(Map<String, dynamic> json) => _$SchoolResultAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$SchoolResultAttributesToJson(this);
}

@JsonSerializable()
class SchoolResultMeta {
    @JsonKey(name: "pagination")
    SchoolResultPagination pagination;

    SchoolResultMeta({
        required this.pagination,
    });

    factory SchoolResultMeta.fromJson(Map<String, dynamic> json) => _$SchoolResultMetaFromJson(json);

    Map<String, dynamic> toJson() => _$SchoolResultMetaToJson(this);
}

@JsonSerializable()
class SchoolResultPagination {
    @JsonKey(name: "page")
    int page;
    @JsonKey(name: "pageSize")
    int pageSize;
    @JsonKey(name: "pageCount")
    int pageCount;
    @JsonKey(name: "total")
    int total;

    SchoolResultPagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory SchoolResultPagination.fromJson(Map<String, dynamic> json) => _$SchoolResultPaginationFromJson(json);

    Map<String, dynamic> toJson() => _$SchoolResultPaginationToJson(this);
}

enum SchoolLevel {
  @JsonValue('NEED_TEACHERS')
  needTeachers,
  @JsonValue('NEED_FACILITIES')
  needFacilities,
  @JsonValue('FULLFILLED')
  fullfilled
}

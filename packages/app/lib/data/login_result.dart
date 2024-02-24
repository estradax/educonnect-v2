import 'package:educonnect_app/data/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_result.g.dart';

@JsonSerializable()
class LoginResult {
    @JsonKey(name: 'data')
    List<LoginResultData> data;
    @JsonKey(name: 'meta')
    LoginResultMeta meta;

    LoginResult({
        required this.data,
        required this.meta,
    });

    factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResultToJson(this);
}

@JsonSerializable()
class LoginResultData {
    @JsonKey(name: 'id')
    int id;
    @JsonKey(name: 'attributes')
    LoginResultAttributes attributes;

    LoginResultData({
        required this.id,
        required this.attributes,
    });

    factory LoginResultData.fromJson(Map<String, dynamic> json) => _$LoginResultDataFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResultDataToJson(this);
}

@JsonSerializable()
class LoginResultAttributes {
    @JsonKey(name: 'fullName')
    String? fullName;
    @JsonKey(name: 'email')
    String email;
    @JsonKey(name: 'role')
    UserRole? role;
    @JsonKey(name: 'firebaseUid')
    String firebaseUid;
    @JsonKey(name: 'createdAt')
    DateTime createdAt;
    @JsonKey(name: 'updatedAt')
    DateTime updatedAt;

    LoginResultAttributes({
        required this.fullName,
        required this.email,
        required this.role,
        required this.firebaseUid,
        required this.createdAt,
        required this.updatedAt,
    });

    factory LoginResultAttributes.fromJson(Map<String, dynamic> json) => _$LoginResultAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResultAttributesToJson(this);
}

@JsonSerializable()
class LoginResultMeta {
    @JsonKey(name: 'pagination')
    LoginResultPagination pagination;

    LoginResultMeta({
        required this.pagination,
    });

    factory LoginResultMeta.fromJson(Map<String, dynamic> json) => _$LoginResultMetaFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResultMetaToJson(this);
}

@JsonSerializable()
class LoginResultPagination {
    @JsonKey(name: 'page')
    int page;
    @JsonKey(name: 'pageSize')
    int pageSize;
    @JsonKey(name: 'pageCount')
    int pageCount;
    @JsonKey(name: 'total')
    int total;

    LoginResultPagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory LoginResultPagination.fromJson(Map<String, dynamic> json) => _$LoginResultPaginationFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResultPaginationToJson(this);
}


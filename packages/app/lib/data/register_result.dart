import 'package:educonnect_app/data/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_result.g.dart';

@JsonSerializable()
class RegisterResult {
  @JsonKey(name: 'data')
  RegisterResultData data;
  @JsonKey(name: 'meta')
  RegisterResultMeta meta;

  RegisterResult({
    required this.data,
    required this.meta,
  });

  factory RegisterResult.fromJson(Map<String, dynamic> json) =>
      _$RegisterResultFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResultToJson(this);
}

@JsonSerializable()
class RegisterResultData {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'attributes')
  RegisterResultAttributes attributes;

  RegisterResultData({
    required this.id,
    required this.attributes,
  });

  factory RegisterResultData.fromJson(Map<String, dynamic> json) =>
      _$RegisterResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResultDataToJson(this);
}

@JsonSerializable()
class RegisterResultAttributes {
  @JsonKey(name: 'fullName')
  String fullName;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'role')
  UserRole role;
  @JsonKey(name: 'firebaseUid')
  String firebaseUid;
  @JsonKey(name: 'createdAt')
  DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  RegisterResultAttributes({
    required this.fullName,
    required this.email,
    required this.role,
    required this.firebaseUid,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RegisterResultAttributes.fromJson(Map<String, dynamic> json) =>
      _$RegisterResultAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResultAttributesToJson(this);
}

@JsonSerializable()
class RegisterResultMeta {
  RegisterResultMeta();

  factory RegisterResultMeta.fromJson(Map<String, dynamic> json) =>
      _$RegisterResultMetaFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResultMetaToJson(this);
}

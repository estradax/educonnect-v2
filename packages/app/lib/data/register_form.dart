import 'package:educonnect_app/data/user.dart';
import 'package:flutterfly/flutterfly.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_form.g.dart';

@JsonSerializable()
class RegisterForm {
  @JsonKey(name: 'data')
  RegisterData data;

  RegisterForm({
    required this.data,
  });

  factory RegisterForm.fromJson(Map<String, dynamic> json) =>
      _$RegisterFormFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterFormToJson(this);
}

@JsonSerializable()
class RegisterData {
  @JsonKey(name: 'fullName')
  String fullName;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'role')
  UserRole role;
  @JsonKey(name: 'firebaseUid')
  String firebaseUid;

  RegisterData({
    required this.fullName,
    required this.email,
    required this.role,
    required this.firebaseUid,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) => _$RegisterDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);
}

class RegisterValidation {
  final String fullName;
  final String email;
  final String password;
  final UserRole role;

  RegisterValidation({
    required this.fullName,
    required this.email,
    required this.password,
    required this.role,
  });

  bool isValid() {
    bool retval = true;

    if (ValidatorString(fullName).required().build() != null) retval = false;
    if (ValidatorString(email).required().email().build() != null) {
      retval = false;
    }
    if (ValidatorString(password).required().build() != null) retval = false;

    return retval;
  }
}

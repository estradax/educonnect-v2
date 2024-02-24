import 'package:json_annotation/json_annotation.dart';

part 'login_with_google_form.g.dart';

@JsonSerializable()
class LoginWithGoogleForm {
    @JsonKey(name: 'data')
    LoginWithGoogleFormData data;

    LoginWithGoogleForm({
        required this.data,
    });

    factory LoginWithGoogleForm.fromJson(Map<String, dynamic> json) => _$LoginWithGoogleFormFromJson(json);

    Map<String, dynamic> toJson() => _$LoginWithGoogleFormToJson(this);
}

@JsonSerializable()
class LoginWithGoogleFormData {
    @JsonKey(name: 'email')
    String email;
    @JsonKey(name: 'firebaseUid')
    String firebaseUid;

    LoginWithGoogleFormData({
        required this.email,
        required this.firebaseUid,
    });

    factory LoginWithGoogleFormData.fromJson(Map<String, dynamic> json) => _$LoginWithGoogleFormDataFromJson(json);

    Map<String, dynamic> toJson() => _$LoginWithGoogleFormDataToJson(this);
}


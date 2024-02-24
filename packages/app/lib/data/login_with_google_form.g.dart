// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_google_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginWithGoogleForm _$LoginWithGoogleFormFromJson(Map<String, dynamic> json) =>
    LoginWithGoogleForm(
      data: LoginWithGoogleFormData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginWithGoogleFormToJson(
        LoginWithGoogleForm instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

LoginWithGoogleFormData _$LoginWithGoogleFormDataFromJson(
        Map<String, dynamic> json) =>
    LoginWithGoogleFormData(
      email: json['email'] as String,
      firebaseUid: json['firebaseUid'] as String,
    );

Map<String, dynamic> _$LoginWithGoogleFormDataToJson(
        LoginWithGoogleFormData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firebaseUid': instance.firebaseUid,
    };

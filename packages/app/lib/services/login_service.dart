import 'dart:convert';

import 'package:educonnect_app/data/login_result.dart';
import 'package:educonnect_app/data/login_with_google_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class LoginService {
  loginWithGoogle(UserCredential userCredential) async {
    final checkUserUrl =
        '${const String.fromEnvironment('API_URL')}/api/ec-users?filters[email][\$eq]=${userCredential.user?.email}';
    final checkUserUri = Uri.parse(checkUserUrl);

    final response = await http.get(
      checkUserUri,
      headers: {
        'Authorization': 'Bearer ${const String.fromEnvironment('API_KEY')}',
      },
    );

    final result = LoginResult.fromJson(jsonDecode(response.body));
    if (result.data.isEmpty) {
      final form = LoginWithGoogleForm(
        data: LoginWithGoogleFormData(
          email: userCredential.user!.email!,
          firebaseUid: userCredential.user!.uid,
        ),
      );

      const createUserUrl =
          '${const String.fromEnvironment('API_URL')}/api/ec-users';
      final createUserUri = Uri.parse(createUserUrl);

      await http.post(
        createUserUri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${const String.fromEnvironment('API_KEY')}',
        },
        body: jsonEncode(form.toJson()),
      );
    } 
  }
}

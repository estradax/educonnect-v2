import 'dart:convert';

import 'package:educonnect_app/data/register_form.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  void register(RegisterForm form) {
    http
        .post(
          Uri.parse('http://34.101.129.10:1337/api/ec-users'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer 1e5431dd26376b36ab05efc25167bc85b7420f892083408e897c46f4d8dba4c7d390d56ed8efe4863ca915e6ce55f80d30e4a83e4fd6ca8f20db2cd0b9381c738c500b5338cd596b8ad7d2ee6bf62fbab39ca7bbff665465a7fb03b739db483d4b999f3e890527f6a16919ebcd95759e3426114b0f6c6b95971d0138d3c03039',
          },
          body: jsonEncode(form.toJson()),
        )
        .then(
          (value) => print(value.statusCode),
        );
  }
}

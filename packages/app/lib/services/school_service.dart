import 'dart:convert';

import 'package:educonnect_app/data/school_result.dart';
import 'package:http/http.dart' as http;

class SchoolService {
  Future<SchoolResult> fetchAll() async {
    const url = '${const String.fromEnvironment('API_URL')}/api/schools';
    final uri = Uri.parse(url);
    final response = await http.get(
      uri,
      headers: {
        'Authorization': 'Bearer ${const String.fromEnvironment('API_KEY')}',
      },
    );

    return SchoolResult.fromJson(jsonDecode(response.body));
  }
}

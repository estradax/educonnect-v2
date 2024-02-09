import 'package:educonnect_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduConnect V2',
      theme: ThemeData(
        primaryColor: const Color(0xFF1C74B8),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

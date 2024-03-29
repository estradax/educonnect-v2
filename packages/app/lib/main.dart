import 'package:educonnect_app/firebase_options.dart';
import 'package:educonnect_app/screens/intro_screen.dart';
import 'package:educonnect_app/screens/master_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduConnect V2',
      theme: ThemeData(
        primaryColor: const Color(0xFF539DF3),
        indicatorColor: Colors.black.withOpacity(0.05),
        useMaterial3: true,
      ),
      home: const MasterScreen(),
    );
  }
}

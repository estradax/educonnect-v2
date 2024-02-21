import 'package:educonnect_app/firebase_options.dart';
import 'package:educonnect_app/screens/intro_screen.dart';
import 'package:educonnect_app/screens/statistic_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // change host to your local ip address
  await FirebaseAuth.instance.useAuthEmulator('192.168.152.7', 9099);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduConnect V2',
      theme: ThemeData(
        primaryColor: const Color(0xFF539DF3),
        indicatorColor: Colors.black.withOpacity(0.05),
        useMaterial3: true,
      ),
      home: const StatisticScreen(),
    );
  }
}

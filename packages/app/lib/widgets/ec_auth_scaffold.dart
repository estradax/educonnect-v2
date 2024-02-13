import 'package:flutter/material.dart';

class EcAuthScaffold extends StatelessWidget {
  final Widget? body;

  const EcAuthScaffold({
    super.key,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Image.asset('lib/assets/images/educonnect-logo.png'),
        ),
        titleSpacing: 0,
        title: const Text(
          'EduConnect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
      ),
      body: body,
    );
  }
}

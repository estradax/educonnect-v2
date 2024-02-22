import 'package:flutter/material.dart';

class EcHeadingText extends StatelessWidget {
  final String text;

  const EcHeadingText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

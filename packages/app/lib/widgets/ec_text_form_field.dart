import 'package:flutter/material.dart';

class EcTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obsecureText;
  final TextEditingController? controller;

  const EcTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.obsecureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: controller,
          obscureText: obsecureText,
          style: const TextStyle(fontSize: 12),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            labelText: hintText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: TextStyle(
              color: Colors.black.withOpacity(0.50),
              fontSize: 12,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

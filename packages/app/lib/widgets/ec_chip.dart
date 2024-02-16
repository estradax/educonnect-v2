import 'package:flutter/material.dart';

class EcChip extends StatelessWidget {
  final String label;

  const EcChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Theme.of(context).indicatorColor,
      label: Text(label),
      side: BorderSide.none,
    );
  }
}

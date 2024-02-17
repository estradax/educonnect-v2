import 'package:flutter/material.dart';

class EcChip extends StatelessWidget {
  final String label;
  final bool isActive;

  const EcChip({
    super.key,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isActive
          ? Theme.of(context).primaryColor
          : Theme.of(context).indicatorColor,
      labelStyle: TextStyle(color: isActive ? Colors.white : Colors.black),
      label: Text(label),
      side: BorderSide.none,
    );
  }
}

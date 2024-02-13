import 'package:flutter/material.dart';

class EcAuthFormCard extends StatelessWidget {
  final Widget? child;

  const EcAuthFormCard({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

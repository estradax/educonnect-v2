import 'package:flutter/material.dart';

class EcButton extends StatelessWidget {
  final String text;
  final ImageProvider? icon;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final void Function()? onTap;

  const EcButton({
    super.key,
    required this.text,
    this.icon,
    this.textStyle,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.30),
          ),
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null
                ? const SizedBox(
                    height: 0,
                    width: 0,
                  )
                : Image(
                    image: icon!,
                    width: 20,
                    height: 20,
                  ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

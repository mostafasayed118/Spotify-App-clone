import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double? fontSize;
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: fontSize ?? 12,
              color: color,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

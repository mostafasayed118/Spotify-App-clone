import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? height;
  final Color color;
  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            textStyle: const WidgetStatePropertyAll(
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            minimumSize: WidgetStatePropertyAll(
              Size.fromHeight(height ?? 60),
            ),
          ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: color, fontSize: 18),
      ),
    );
  }
}

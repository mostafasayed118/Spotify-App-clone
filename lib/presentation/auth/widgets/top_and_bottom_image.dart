import 'package:flutter/material.dart';

class TopAndBottomImage extends StatelessWidget {
  final AlignmentGeometry alignment;
  final String imagePath;

  const TopAndBottomImage(
      {super.key, required this.alignment, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Image.asset(imagePath),
    );
  }
}

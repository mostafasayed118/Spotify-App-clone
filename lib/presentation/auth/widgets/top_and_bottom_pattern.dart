import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAndBottomPattern extends StatelessWidget {
  final AlignmentGeometry alignment;
  final String svgPath;

  const TopAndBottomPattern(
      {super.key, required this.alignment, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(svgPath),
    );
  }
}

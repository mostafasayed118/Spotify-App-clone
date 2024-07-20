import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconWidget extends StatelessWidget {
  final String svgPath;
  final Color color;
  const CustomIconWidget(
      {super.key, required this.svgPath, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
        ),
        child: SvgPicture.asset(
          svgPath,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}

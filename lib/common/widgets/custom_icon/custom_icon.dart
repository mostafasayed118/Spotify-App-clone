import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class CustomIconWidget extends StatelessWidget {
  final String svgPathLightMode;
  final String? svgPathDarkMode;
  final Color color;
  const CustomIconWidget(
      {super.key, required this.svgPathLightMode, required this.color,  this.svgPathDarkMode});

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
          context.isDarkMode ? svgPathDarkMode ?? svgPathLightMode : svgPathLightMode,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}

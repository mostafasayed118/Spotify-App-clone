import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class LightAndDarkMode extends StatelessWidget {
  final String text;
  final String svgPath;
  final Function onTap;

  const LightAndDarkMode(
      {super.key,
      required this.text,
      required this.svgPath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTap;
          },
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: AppColors.darkGrey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50)),
                  child: SvgPicture.asset(
                    svgPath,
                    fit: BoxFit.none,
                  )),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: context.isDarkMode
                    ? AppColors.lightBackgroundAndWhite
                    : AppColors.lightBackgroundAndWhite)),
      ],
    );
  }
}

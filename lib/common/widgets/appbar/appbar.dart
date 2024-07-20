import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

import '../../navigator/navigator.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      leading: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.lightBackgroundAndWhite.withOpacity(0.03)
              : AppColors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(35),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            navigatePop(context: context);
          },
        ),
      ),
    );
  }
}

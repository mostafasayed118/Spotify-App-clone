import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

import '../../../core/configs/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        color: context.isDarkMode
            ? AppColors.darkGrey
            : AppColors.darkBackground.withOpacity(0.3),
      ),
    );
  }
}

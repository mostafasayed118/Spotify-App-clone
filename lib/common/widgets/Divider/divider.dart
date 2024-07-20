import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        color: AppColors.darkBackground.withOpacity(0.3),
      ),
    );
  }
}

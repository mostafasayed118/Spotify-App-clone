import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

import '../../../core/configs/theme/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final IconButton? iconButton;
  const CustomTextfield(
      {super.key,
      required this.hintText,
      this.validator,
      this.keyboardType,
      this.iconButton});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: keyboardType == TextInputType.visiblePassword ? true : false,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        suffixIcon: iconButton,
        hintText: hintText,
      ).applyDefaults(Theme.of(context).inputDecorationTheme.copyWith(
            hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: context.isDarkMode
                      ? AppColors.darkGreyForTextField.withOpacity(0.7)
                      : AppColors.black.withOpacity(0.5),
                ),
          )),
    );
  }
}

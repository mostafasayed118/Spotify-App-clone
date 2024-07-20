import 'package:flutter/material.dart';

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
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}

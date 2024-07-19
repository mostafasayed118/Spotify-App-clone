import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/navigator/navigator.dart';
import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/strings/app_strings.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../bloc/theme_cubit.dart';
import '../widgets/light_and_dark_mode.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBG),
              ),
            ),
          ),
          Container(
            color: AppColors.black.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                Text(AppStrings.chooseMode,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: AppColors.white)),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  children: [
                    LightAndDarkMode(
                      text: AppStrings.lightMode,
                      svgPath: AppVectors.sun,
                      onTap: () {
                        context.read<ThemeCubit>().changeTheme(ThemeMode.light);
                      },
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    LightAndDarkMode(
                      text: AppStrings.darkMode,
                      svgPath: AppVectors.moon,
                      onTap: () {
                        context.read<ThemeCubit>().changeTheme(ThemeMode.dark);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                BasicAppButton(
                  onPressed: () {
                    navigatePush(
                        context: context, screen: const ChooseModePage());
                  },
                  text: AppStrings.continueButton,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

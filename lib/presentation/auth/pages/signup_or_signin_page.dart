import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/common/navigator/navigator.dart';
import 'package:spotify_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_app/presentation/auth/pages/signin_page.dart';
import 'package:spotify_app/presentation/auth/pages/signup_page.dart';
import 'package:spotify_app/presentation/auth/widgets/top_and_bottom_image.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../core/configs/strings/app_strings.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../widgets/top_and_bottom_pattern.dart';

class SignUpOrSignInPage extends StatelessWidget {
  const SignUpOrSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: BasicAppBar(),
          ),
          const TopAndBottomPattern(
            alignment: Alignment.topRight,
            svgPath: AppVectors.topPattern,
          ),
          const TopAndBottomPattern(
            alignment: Alignment.bottomRight,
            svgPath: AppVectors.bottomPattern,
          ),
          const TopAndBottomImage(
            alignment: Alignment.bottomLeft,
            imagePath: AppImages.authBG,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  const SizedBox(
                    height: 55,
                  ),
                  Text(
                    AppStrings.enjoy,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.lightBackgroundAndWhite,
                          fontSize: 24,
                        ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    AppStrings.spotifyIs,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.greyForSmallText,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            navigatePush(
                                context: context, screen: const SignUpPage());
                          },
                          text: AppStrings.register,
                          color: AppColors.lightBackgroundAndWhite,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {
                            navigatePush(
                                context: context, screen: const SignInPage());
                          },
                          child: Text(
                            AppStrings.signIn,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: context.isDarkMode
                                      ? AppColors.lightBackgroundAndWhite
                                      : AppColors.black,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 90),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

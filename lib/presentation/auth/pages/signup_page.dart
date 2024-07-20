import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/common/navigator/navigator.dart';
import 'package:spotify_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_app/common/widgets/custom_icon/custom_icon.dart';
import 'package:spotify_app/common/widgets/textfield/custom_textfield.dart';
import 'package:spotify_app/core/configs/strings/app_strings.dart';
import 'package:spotify_app/presentation/auth/pages/signin_page.dart';

import '../../../common/widgets/Divider/divider.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/textbutton/custom_textbutton.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/theme/app_colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        hideBack: false,
        title: SvgPicture.asset(
          AppVectors.logo,
          width: 100,
          height: 35,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.register,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 24,
                    ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.ifYouNeed,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                  CustomTextButton(
                    text: AppStrings.clickHere,
                    color: AppColors.primary,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomTextfield(hintText: AppStrings.fullNameHint),
              const SizedBox(height: 15),
              const CustomTextfield(
                  hintText: AppStrings.enterEmailHint,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: AppStrings.passwordHint,
                keyboardType: TextInputType.visiblePassword,
                iconButton: IconButton(
                  icon: const Icon(Icons.visibility_off_outlined,
                      color: AppColors.lightGreyForPasswordIcon),
                  onPressed: () {
                    // TODO: Show/Hide password
                  },
                ),
              ),
              const SizedBox(height: 35),
              BasicAppButton(
                  onPressed: () {},
                  text: AppStrings.createAccount,
                  color: AppColors.normalWhite),
              const SizedBox(height: 35),
              Row(
                children: [
                  const CustomDivider(),
                  const SizedBox(width: 10),
                  Text(
                    AppStrings.or,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: context.isDarkMode
                              ? AppColors.white
                              : AppColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(width: 10),
                  const CustomDivider(),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconWidget(
                      svgPathLightMode: AppVectors.google,
                      color: AppColors.transparent),
                  SizedBox(width: 50),
                  CustomIconWidget(
                    svgPathDarkMode: AppVectors.appleDark,
                    svgPathLightMode: AppVectors.apple,
                    color: AppColors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.doYouHave,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  CustomTextButton(
                    text: AppStrings.signIn,
                    onPressed: () {
                      navigatePushReplacement(
                          context: context, screen: const SignInPage());
                    },
                    color: AppColors.blue,
                    fontSize: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

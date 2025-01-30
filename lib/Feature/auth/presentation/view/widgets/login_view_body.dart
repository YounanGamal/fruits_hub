import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/Core/Widgets/custom_button.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Core/util/assets.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/dont_have_account_widget.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/or_divider.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.regular13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            SizedBox(
              height: 33,
            ),
            DontHaveAccountWidget(),
            SizedBox(
              height: 33,
            ),
            OrDivider(),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              label: 'تسجيل بواسطة جوجل',
              image: Assets.iconsGoogleIcon,
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              label: 'تسجيل بواسطة أبل',
              image: Assets.iconsAppleIcon,
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              label: 'تسجيل بواسطة فيسبوك',
              image: Assets.iconsFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}

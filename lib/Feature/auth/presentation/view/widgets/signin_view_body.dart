import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/Core/Widgets/custom_button.dart';
import 'package:fruits_hub/Core/Widgets/password_field.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Core/util/assets.dart';
import 'package:fruits_hub/Feature/auth/presentation/cubit/signin/signin_cubit.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/dont_have_account_widget.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/or_divider.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/social_signin_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String password, email;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.text,
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signin(email, password);
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
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
              SocialSigninButton(
                onPressed: () {},
                label: 'تسجيل بواسطة جوجل',
                image: Assets.iconsGoogleIcon,
              ),
              SizedBox(
                height: 16,
              ),
              SocialSigninButton(
                onPressed: () {},
                label: 'تسجيل بواسطة أبل',
                image: Assets.iconsAppleIcon,
              ),
              SizedBox(
                height: 16,
              ),
              SocialSigninButton(
                onPressed: () {},
                label: 'تسجيل بواسطة فيسبوك',
                image: Assets.iconsFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

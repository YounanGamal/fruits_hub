import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/Widgets/custom_button.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/have_an_account.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/terms_and_condition.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: 'الاسم كامل',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
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
          TermsAndCondition(),
          SizedBox(
            height: 33,
          ),
          CustomButton(
            onPressed: () {},
            text: 'إنشاء حساب جديد',
          ),
          SizedBox(height: 26,),
          HaveAnAccount(),
        ],
      ),
    );
  }
}

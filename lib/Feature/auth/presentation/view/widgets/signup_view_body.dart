import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/Core/Widgets/custom_button.dart';
import 'package:fruits_hub/Core/Widgets/password_field.dart';
import 'package:fruits_hub/Core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/Feature/auth/presentation/cubit/signup/signup_cubit.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/have_an_account.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/terms_and_condition.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autValidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  bool obscureText = true;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autValidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                textInputType: TextInputType.text,
                onSaved: (value) {
                  name = value!;
                },
              ),
              SizedBox(
                height: 16,
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
              TermsAndCondition(
                onChange: (value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(
                height: 33,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                            email,
                            password,
                            name,
                          );
                    } else {
                      buildErrorBar(
                          context, 'يجب عليك الموافقة على الشروط والإحكام');
                    }
                  } else {
                    setState(() {
                      autValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              SizedBox(
                height: 26,
              ),
              HaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}

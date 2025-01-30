import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'حساب جديد'),
      body: SignupViewBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }

  
}

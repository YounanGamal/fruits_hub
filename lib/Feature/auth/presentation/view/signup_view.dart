import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_hub/Core/service/get_it_service.dart';
import 'package:fruits_hub/Feature/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/Feature/auth/presentation/cubit/signup/signup_cubit.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: customAppBar(context, title: 'حساب جديد'),
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}

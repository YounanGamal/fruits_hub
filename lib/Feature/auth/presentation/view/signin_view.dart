import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_hub/Core/service/get_it_service.dart';
import 'package:fruits_hub/Feature/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/Feature/auth/presentation/cubit/signin/signin_cubit.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: customAppBar(context, title: 'تسجيل دخول'),
        body: SigninViewBody(),
      ),
    );
  }
}

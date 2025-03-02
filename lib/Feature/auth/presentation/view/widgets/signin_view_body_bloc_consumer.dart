import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/Core/Widgets/custom_progress_hud.dart';
import 'package:fruits_hub/Core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Feature/auth/presentation/cubit/signin/signin_cubit.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/signin_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushReplacementNamed(context, PageRouteName.home);
        } else if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          loading: state is SigninLoading ? true : false,
          child: SigninViewBody(),
        );
      },
    );
  }
}

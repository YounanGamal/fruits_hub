import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/splash/presentation/view/widget/splash_view_body.dart';
import 'package:fruits_hub/core/helper/page_route_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void excuteNavigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(
        context,
        PageRouteName.onBoarding,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Core/service/shared_preferences_singleton.dart';
import 'package:fruits_hub/Feature/splash/presentation/view/widget/splash_view_body.dart';
import 'package:fruits_hub/constants.dart';

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
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isOnBoardingViewSeen) {
          Navigator.pushReplacementNamed(
            context,
            PageRouteName.login,
          );
        } else {
          Navigator.pushReplacementNamed(
            context,
            PageRouteName.onBoarding,
          );
        }
      },
    );
  }
}

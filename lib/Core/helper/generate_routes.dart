import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/onboarding/presentation/view/onBoarding_view.dart';
import 'package:fruits_hub/core/helper/page_route_name.dart';
import '../../Feature/splash/presentation/view/splash_view.dart';

class GenerateRoutes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );
      case PageRouteName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => OnBoardingView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );
    }
  }
}

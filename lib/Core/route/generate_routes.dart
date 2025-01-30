import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/route/page_name_route.dart';
import 'package:fruits_hub/Feature/onboarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_hub/Feature/splash/presentation/view/splash_view.dart';

class GenerateRoutes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case PageNameRoute.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        ); case PageNameRoute.onBoarding:
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

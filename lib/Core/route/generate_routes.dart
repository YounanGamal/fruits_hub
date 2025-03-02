import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/signin_view.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/signup_view.dart';
import 'package:fruits_hub/Feature/home/presentation/view/home_view.dart';
import 'package:fruits_hub/Feature/on_boarding/presentation/views/on_boarding_view.dart';
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
      case PageRouteName.login:
        return MaterialPageRoute(
          builder: (context) => SigninView(),
          settings: settings,
        );
      case PageRouteName.signup:
        return MaterialPageRoute(
          builder: (context) => SignupView(),
          settings: settings,
        );
      case PageRouteName.home:
        return MaterialPageRoute(
          builder: (context) => HomeView(),
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

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/Core/route/generate_routes.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const FruitsHUB());
}

class FruitsHUB extends StatelessWidget {
  const FruitsHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoutes.onGenerate,
      initialRoute: PageRouteName.initial,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
    );
  }
}

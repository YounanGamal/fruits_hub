import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/Core/route/generate_routes.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Core/service/custom_bloc_observer.dart';
import 'package:fruits_hub/Core/service/get_it_service.dart';
import 'package:fruits_hub/Core/service/shared_preferences_singleton.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  setupGetIt();
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

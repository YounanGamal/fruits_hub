import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/route/generate_routes.dart';
import 'package:fruits_hub/Core/route/page_name_route.dart';

void main() {
  runApp(const FruitsHUB());
}

class FruitsHUB extends StatelessWidget {
  const FruitsHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoutes.onGenerate,
      initialRoute: PageNameRoute.initial,
    );
  }
}

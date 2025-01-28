import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/helper/generate_routes.dart';
import 'package:fruits_hub/Core/helper/page_route_name.dart';

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
      initialRoute: PageRouteName.initial,
    );
  }
}

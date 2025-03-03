import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/home/presentation/view/widgets/feature_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const FeatureItem(),
          );
        }),
      ),
    );
  }
}

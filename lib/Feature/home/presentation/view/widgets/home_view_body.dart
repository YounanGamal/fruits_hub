import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/Feature/home/presentation/view/widgets/featured_list.dart';
import 'package:fruits_hub/Feature/home/presentation/view/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHomeAppBar(),
              SizedBox(height: 16,),
              SearchTextField(),
              SizedBox(height: 12,),
              FeaturedList(),
            ],
          ),
        ),

      ],
    );
  }
}

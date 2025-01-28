import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/onboarding/presentation/view/widgets/page_view_item.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
            backgroundImage: 'assets/image/page_view_item2_background.svg',
            image: 'assets/image/page_view_item1_image.svg',
            title: 'مرحبًا بك في FruitHUB',
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
      ],
    );
  }
}

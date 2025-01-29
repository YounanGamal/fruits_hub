import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Core/util/assets.dart';
import 'package:fruits_hub/Feature/onboarding/presentation/view/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible:true,
            backgroundImage: Assets.imagesPageViewItem1Background,
            image: Assets.imagesPageViewItem1Image,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبًا بك في',
                  style: TextStyles.bold23,
                ),
                Text(
                  ' HUB',
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor),
                ),
                Text(
                  'Fruit',
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.primaryColor),
                ),
              ],
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
        PageViewItem(
          isVisible:
              false,
          backgroundImage: Assets.imagesPageViewItem2Background,
          image: Assets.imagesPageViewItem2Image,
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff0C0D0D),
                fontSize: 23,
                fontWeight: FontWeight.w700),
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}

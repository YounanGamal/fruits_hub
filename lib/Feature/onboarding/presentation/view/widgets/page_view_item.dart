import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Core/route/page_route_name.dart';
import 'package:fruits_hub/Core/service/shared_preferences_singleton.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/constants.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });

  final String backgroundImage;
  final String image;
  final Widget title;
  final String subTitle;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SvgPicture.asset(image),
            ),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);

                  Navigator.pushReplacementNamed(context, PageRouteName.login);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'تخط',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xff949D9E),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: Color(0xff4E5556),
            ),
          ),
        ),
      ],
    );
  }
}

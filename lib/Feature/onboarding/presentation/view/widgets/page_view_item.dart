import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

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

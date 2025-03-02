import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Core/util/assets.dart';
import 'package:fruits_hub/Feature/home/presentation/view/widgets/feature_item_button.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 32;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              right: itemWidth * 0.4,
              child: SvgPicture.asset(
                Assets.imagesPageViewItem2Image,
              ),
            ),
            Container(
              width: itemWidth * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4)),
                image: DecorationImage(
                  image: svg.Svg(Assets.imagesFeatureItemBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    FeatureItemButton(
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

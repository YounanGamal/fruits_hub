import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

import '../../../../../Core/util/assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xffEEF8ED),
        ),
        child: SvgPicture.asset(Assets.iconsNotificationIcon),
      ),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(
          color: Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        'أحمد مصطفي',
        style: TextStyles.bold16.copyWith(),
      ),
      leading: Image.asset(
        Assets.imagesProfileImage,
        width: 44,
      ),
    );
  }
}

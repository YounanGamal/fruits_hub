import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

class SocialSigninButton extends StatelessWidget {
  const SocialSigninButton(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.image});

  final VoidCallback onPressed;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Color(0xffDDDFDF),
            ),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            textAlign: TextAlign.center,
            label,
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xff0C0D0D),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          'أو',
          style: TextStyles.semiBold16.copyWith(color: Color(0xff0C0D0D)),
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/Core/util/assets.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChange});

  final bool isChecked;
  final ValueChanged<bool> onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChange(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(
          milliseconds: 100,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isChecked ? AppColors.primaryColor : Colors.white,
          border: Border.fromBorderSide(
            BorderSide(
              color: isChecked ? Colors.transparent : Color(0xffDDDFDF),
            ),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(Assets.iconsCheckIcon),
              )
            :  const SizedBox(),
      ),
    );
  }
}

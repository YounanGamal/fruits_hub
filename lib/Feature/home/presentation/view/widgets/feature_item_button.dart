import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/theme/app_colors.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

class FeatureItemButton extends StatelessWidget {
  const FeatureItemButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: FittedBox(
            child: Text(
              'تسوق الان',
              style: TextStyles.bold13.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

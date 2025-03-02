import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';
import 'package:fruits_hub/Core/util/assets.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ]),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'ابحث عن.......',
            hintStyle: TextStyles.regular13.copyWith(
              color: Color(0xff949D9E),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            suffixIcon: SizedBox(
              width: 20,
              child: Center(
                child: SvgPicture.asset(Assets.iconsFilterIcon),
              ),
            ),
            prefixIcon: SizedBox(
              width: 20,
              child: Center(
                child: SvgPicture.asset(Assets.iconsSearchIcon),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

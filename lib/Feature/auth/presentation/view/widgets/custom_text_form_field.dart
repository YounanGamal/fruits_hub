import 'package:flutter/material.dart';
import 'package:fruits_hub/Core/theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText=false,
  });

  final Widget? suffixIcon;
  final String hintText;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
   bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: Color(0xff949D9E),
        ),
        filled: true,
        fillColor: Color(0xffF9FAFA),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color(0xffE6E9EA),
          ),
        ),
        errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color(0xffE6E9EA),
          ),
        ),
      ),
    );
  }
}

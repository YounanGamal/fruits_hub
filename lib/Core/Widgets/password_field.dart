import 'package:flutter/material.dart';
import 'package:fruits_hub/Feature/auth/presentation/view/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});
 final void Function(String?)? onSaved;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return   CustomTextFormField(
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: obscureText
            ? Icon(
          Icons.visibility,
          color: Color(0xffC9CECF),
        )
            : Icon(
          Icons.visibility_off,
          color: Color(0xffC9CECF),
        ),
      ),
      onSaved: widget.onSaved
    );
  }
}

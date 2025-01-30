import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

customAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios)),
  );
}
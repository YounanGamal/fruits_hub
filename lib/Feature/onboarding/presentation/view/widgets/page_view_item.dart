import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.backgroundImage,
      required this.image,
      required this.title,
      required this.subTitle});

  final String backgroundImage;
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SvgPicture.asset(image),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Text(
                'تخط',
                style: TextStyle(color: Color(0xff949D9E)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                color: Color(0xff0C0D0D),
              ),
            ),
          ],
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            color: Color(0xff4E5556),
          ),
        ),
      ],
    );
  }
}

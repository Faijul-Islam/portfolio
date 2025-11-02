import 'package:animation/common_card.dart';
import 'package:animation/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double avatarRadius = screenWidth * 0.10;
    return CommonCard(
      mHorizontal: 2.w,
        widget:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello, I'm",
                      style: CustomTextStyle.titleText(22,color: Colors.black,lineHeight: 1.5),
                    ),
                    Text(
                      "Faijul Islam",
                      style:CustomTextStyle.titleText(28,color: Colors.black,lineHeight: 1.5),
                    ),
                    Text(

                      "Flutter developer with 2.5 years of experience. I have completed many projects that prove my ability to provide creative and high-quality solutions.",
                      style:CustomTextStyle.descriptionText(18,color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(width: 20.h,),
            Center(
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundImage: const AssetImage("assets/images/img.png"),
              ),
            ),
          ],
        ),
    );
  }
}


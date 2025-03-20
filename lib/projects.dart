import 'package:animation/common_card.dart';
import 'package:animation/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/image_icons.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: CustomTextStyle.titleText(
            28,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
            'For any service and work you can contact with me by send an email or by our social media accounts',
            style: CustomTextStyle.descriptionText(18)),
        const SizedBox(
          height: 40,
        ),
        Wrap(
          children: [
            ProjectCard(
                logo: Images.hatil,
                onTap: () {},
                appName: "Hatil Delivery App",
                appDescription:
                    "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."),
            ProjectCard(
                logo: Images.erp,
                onTap: () {},
                appName: "ERP App",
                appDescription:
                    "An enterprise-level app for managing business operations across different departments."),
            ProjectCard(
                logo: Images.hrm,
                onTap: () {},
                appName: "HRM App",
                appDescription:
                    "An HR management system for employee management, leave, attendance tracking, and payroll."),
            ProjectCard(
              logo: Images.sh,
                onTap: () {},
                appName: "SH Customer App",
                appDescription:
                    "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."),
            ProjectCard(
                logo:Images.sh ,
                onTap: () {},
                appName: "SH Delivery App",
                appDescription:
                    "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.appName,
      required this.appDescription,
      required this.onTap,
      required this.logo});
  final String appName;
  final String logo;
  final String appDescription;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return CommonCard(
      mHorizontal: 0,
        mVertical: 6,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset(
                logo,
                height: 80.h,
                width: 80.w,
              ),
            ),
            Text(
              appName,
              style: CustomTextStyle.titleText(28.sp),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              appDescription,
              style: CustomTextStyle.descriptionText(14.sp,color: Colors.black),
            ),
            TextButton(
                onPressed: onTap,
                child: Text(
                  "Details",
                  style: CustomTextStyle.descriptionText(18.sp, color: Colors.green),
                ))
          ],
        )
    );
  }
}

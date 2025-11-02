import 'package:animation/common_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/text_style.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      mHorizontal: 0.w,
        mVertical: 2.h,
        widget:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Experience",
              style:CustomTextStyle.titleText(28),
            ),
             SizedBox(height: 10.h,),
            Text('Flutter Developer | DI System Ltd, Self-Employed',
              style:CustomTextStyle.descriptionText(22,color:Colors.black),
            ),
             SizedBox(height: 10.h,),
            Text('Jan 2023 – Present |Mirpur 10, Dhaka, Bangladesh',
              style:CustomTextStyle.descriptionText(22,color:Colors.black),
            ),
             SizedBox(height: 10.h,),
            Text('* Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications.',
              style: CustomTextStyle.descriptionText(18,color:Colors.black),
            ),
            Text('* Created ERP App for managing inventory, orders, and customer relationships.',
              style: CustomTextStyle.descriptionText(18,color:Colors.black),),
            Text( '* Designed HR App to streamline employee data, attendance, and payroll management.',
              style: CustomTextStyle.descriptionText(18,color:Colors.black),),
            Text( '* Collaborated with clients to gather requirements and provide technical solutions.',
              style: CustomTextStyle.descriptionText(18,color:Colors.black),),
            Text('* Debugged and optimized code for performance and user experience.',
              style: CustomTextStyle.descriptionText(18,color:Colors.black),),
          ],
        )
    );
  }
}

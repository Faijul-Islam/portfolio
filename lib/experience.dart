import 'package:flutter/cupertino.dart';

import 'config/text_style.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Experience",
          style:CustomTextStyle.titleText(28),
        ),
        const SizedBox(height: 10,),
        Text('Flutter Developer | DI System Ltd, Self-Employed',
          style:CustomTextStyle.descriptionText(22),
        ),
        const SizedBox(height: 10,),
        Text('Jan 2023 – Present |Mirpur 10, Dhaka, Bangladesh',
          style:CustomTextStyle.descriptionText(22),
        ),
        const SizedBox(height: 10,),
        Text('* Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications.',
        style: CustomTextStyle.descriptionText(18),
        ),
        Text('* Created ERP App for managing inventory, orders, and customer relationships.',
          style: CustomTextStyle.descriptionText(18),),
        Text( '* Designed HR App to streamline employee data, attendance, and payroll management.',
          style: CustomTextStyle.descriptionText(18),),
        Text( '* Collaborated with clients to gather requirements and provide technical solutions.',
          style: CustomTextStyle.descriptionText(18),),
        Text('* Debugged and optimized code for performance and user experience.',
          style: CustomTextStyle.descriptionText(18),),
      ],
    );
  }
}

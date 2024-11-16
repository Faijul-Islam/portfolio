import 'package:animation/config/text_style.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  Container(
     // color: const Color(0xFF0A0909),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About me",
          style:CustomTextStyle.titleText(28),
          ),
          const SizedBox(height: 10,),
          Text("Im a flutter developer with a good understanding of the flutter framework, I have experience in UI design, API integration, clean code writing and knowledge of solid principles and clean architecture.I have completed many prohects that prove my ability to provide creative and high quality solutions and finish them in an almost complete way with a great user experience without any problems facing users.",
            style: CustomTextStyle.descriptionText(18),
          ),
        ],
      ),
    );
  }
}

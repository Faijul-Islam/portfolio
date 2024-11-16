

import 'package:animation/config/text_style.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Projects",
          style:CustomTextStyle.titleText(28,),
        ),
        const SizedBox(height: 10,),
        Text(
          'For any service and work you can contact with me by send an email or by our social media accounts',
          style: CustomTextStyle.descriptionText(18)),
        const SizedBox(height: 40,),
        Wrap(
          children: [
            ProjectCard(
              onTap: (){},
                appName: "Hatil Delivery App",
                appDescription: "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."
            ),
            ProjectCard(
                onTap: (){},
                appName: "ERP App",
                appDescription: "An enterprise-level app for managing business operations across different departments."
            ),
            ProjectCard(
                onTap: (){},
                appName: "HRM App",
                appDescription: "An HR management system for employee management, leave, attendance tracking, and payroll."
            ),
            ProjectCard(
                onTap: (){},
                appName: "Hatil Delivery App",
                appDescription: "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."
            ),
            ProjectCard(
                onTap: (){},
                appName: "Hatil Delivery App",
                appDescription: "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key,
    required this.appName,
    required this.appDescription, required this.onTap});
final String appName;
final String appDescription;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
          color: Color(0xFF282727)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(appName,
            style:CustomTextStyle.titleText(28),),
          Text(appDescription,
          style:CustomTextStyle.descriptionText(18),
          ),
          TextButton(
              onPressed: onTap, child: Text("Details",
          style: CustomTextStyle.descriptionText(18,color: Colors.green),
          ))
        ],
      ),
    );
  }
}

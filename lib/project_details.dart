import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/image_icons.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
List<String> projectImages=[
  Images.customerHome,
  Images.customerDrower,
  Images.customerDelivery,
  Images.customerDeliveryDetails,
  Images.customerDeliveryLocation,
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(
            projectImages.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // Optional: Border for styling
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.asset(
                              projectImages[index],
                              width: 220.w,
                              height: 520.h,
                              fit: BoxFit.fill,
                            ),
                ),
          ),
        ),
      ),
    );
  }
}


import 'package:animation/common_card.dart';
import 'package:animation/config/text_style.dart';
import 'package:animation/project_details.dart';
import 'package:flutter/material.dart';

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
        ResponsiveWidget(
            mobile:  Wrap(
    children: [
    ProjectCard(
    logo: Images.hatil,
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (_) => const ProjectDetails()));
    },
    appName: "Hatil Delivery App",
    appDescription:
    '''• A delivery management app for a leading furniture company.
  Customer View
    • View order status in real-time with live updates.
    • Track delivery location on Google Maps.
    • Perform key actions like confirming delivery or requesting support.
    • Submit reviews for delivery personnel and fitter technicians.

Delivery Personnel View
   • Full delivery workflow: Start, Pause, Resume, and Complete deliveries.
   • Access optimized delivery routes with live customer location via Google Maps.
   • Update delivery status dynamically throughout the process.
   • Submit customer reviews post-delivery.

Fitter Technician View
    Mirrors delivery workflow with features tailored to furniture installation.
    View customer location and initiate on-site service steps.
    Provide post-installation feedback or customer reviews.
• Exposed POST, GET, PATCH and DELETE HTTP methods using DIo
• Designed a responsive UI for consistent performance across all mobile devices.
'''),
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
    logo: Images.customerApp,
    onTap: () {},
    appName: "Bravo Mart Customer App",
    appDescription: '''
• Implemented product browsing, search, filters, cart, wishlist, and order tracking.
• Integrated live chat, delivery address via Google Maps, and real-time push notifications.
• Supported multiple languages and light/dark themes for better UX.
• Enabled secure payments with Cash on Delivery and Mobile Banking options.
• Developed loyalty points system to boost engagement and retention.
• Designed seamless customer support chat experience.
• Used Dio for API integration with POST, GET, PATCH, and DELETE methods.
• Designed a responsive UI for consistent performance across all mobile devices.
'''),
    ProjectCard(
    logo: Images.bDeliveryLogo,
    onTap: () {},
    appName: "Bravo Mart Delivery App",
    appDescription:
    "Developed Hatil Delivery App with features like order tracking, delivery status updates, and real-time notifications."),
    ProjectCard(
    logo: Images.sh,
    onTap: () {},
    appName: "Bravo Mart Seller App",
    appDescription:
    "Bravo Mart Customer App Dart,Flutter • Implemented key features for a customer shopping app, including product browsing, search and filters, cart management, wishlist, live chat, delivery address addition in Google Maps, and order tracking.• Integrated push notifications for real-time updates and multi-language support with light and dark themes forenhanced user experience.• Optimized the app for secure payments with multiple gateways such as Cash on Delivery and Mobile Banking.• Developed loyalty points features to improve user engagement and retention.• Designed and implemented customer support chat for seamless user assistance.• Exposed POST, GET, PATCH, and DELETE HTTP methods using Dio for efficient API integration.• Utilized responsive design techniques to ensure compatibility across all devices"),
    ],
    ),
            tablet: Container(),
            desktop: Container()
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
        pHorizontal: 20,
        pVertical: 4,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Image.asset(
                  logo,
                  height: 80,
                  width: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  appName,
                  style: CustomTextStyle.titleText(24),
                ),
                const Spacer(),
                TextButton(
                    onPressed: onTap,
                    child: Text(
                      "Details",
                      style: CustomTextStyle.descriptionText(16,
                          color: Colors.green),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              appDescription,
              style: CustomTextStyle.descriptionText(14,
                  color: Colors.black, lineHeight: 1.5),
            ),
          ],
        ));
  }
}


class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key,
        required this.mobile,
        required this.tablet,
        required this.desktop});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 840;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 840;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
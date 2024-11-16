import 'package:animation/config/image_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'config/text_style.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  // Method to open URLs
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0A0909),
      child: Row(
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact with me',
                    style:CustomTextStyle.titleText(28),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    'For any service and work you can contact with me by send an email or by our social media accounts.',
                    style:CustomTextStyle.descriptionText(22),
                  ),
                  const SizedBox(height: 10,),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){
                            _launchURL('https://www.facebook.com/faizul.azim.716/');
                          },
                            child: Image.asset(ImagesIcons.facebook,
                              height: 30,
                              width: 30,
                            )),
                      ),
                      const SizedBox(width: 14,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){
                            _launchURL('https://www.linkedin.com');
                          },
                            child: Image.asset(
                                ImagesIcons.linkedin,
                              height: 30,
                              width: 30,
                            )),
                      ),
                      const SizedBox(width: 14,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){
                            _launchURL('https://github.com/Faijul-Islam');
                          },
                            child: Image.asset(ImagesIcons.github,
                              height: 30,
                              width: 30,)),
                      ),
                      const SizedBox(width: 14,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){},
                            child: Image.asset(ImagesIcons.gmail,
                              height: 30,
                              width: 30,)),
                      ),
                      const SizedBox(width: 14,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){},
                            child: Image.asset(ImagesIcons.phone,
                              height: 30,
                              width: 30,)),
                      ),
                    ],
                  )
                ],
              )
          ),

        Expanded(
            child: Column(
              children: [

              ],
            )
        )

        ],
      ),
    );
  }
}

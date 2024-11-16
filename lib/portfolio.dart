import 'package:animation/about.dart';
import 'package:animation/config/text_style.dart';
import 'package:animation/contuct.dart';
import 'package:animation/experience.dart';
import 'package:animation/home.dart';
import 'package:animation/projects.dart';
import 'package:animation/skills.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  String selectedKey = '';

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKye = GlobalKey();
  final GlobalKey projectKye = GlobalKey();
  final GlobalKey contactKye = GlobalKey();
  final GlobalKey skillKye = GlobalKey();
  final GlobalKey experienceKye = GlobalKey();



  void scrollTo(GlobalKey key,String menuKey) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(key.currentContext!);
      setState(() {
        selectedKey = menuKey;
      });
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollTo(homeKey,"homeKey");
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF0A0909),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Faijul Islam',
          style:CustomTextStyle.titleText(28),
        ),
        //centerTitle: true,
        actions: [
          ActionButton(
              onTap: ()=>scrollTo(homeKey,"homeKey"),
              isSelected: selectedKey == 'homeKey',
              text: "Home"
          ),
          ActionButton(
              onTap: ()=>scrollTo(aboutKye,"aboutKey"),
              text: "About me",
            isSelected: selectedKey == 'aboutKey',
          ),
          ActionButton(
              onTap: ()=>scrollTo(skillKye,"skillsKey"),
              text: "Skills",
            isSelected: selectedKey == 'skillsKey',
          ),
          ActionButton(
              onTap: ()=>scrollTo(experienceKye,"experienceKey"),
              text: "Experience",
            isSelected: selectedKey == 'experienceKey',
          ),
          ActionButton(
              onTap: ()=>scrollTo(projectKye,"projectKey"),
              text: "Project",
            isSelected: selectedKey == 'projectKey',
          ),
          ActionButton(
              onTap: ()=>scrollTo(contactKye,"contact"),
              text: "Contact",
            isSelected: selectedKey == 'contact',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Home(
              key: homeKey,
            ),
            const SizedBox(height: 20),
             About(
              key: aboutKye,
            ),
            const SizedBox(height: 20),
            Skills(
              key: skillKye,
            ),
            const SizedBox(height: 20),
           Experience(
             key: experienceKye,
           ),

            const SizedBox(height: 20),
             Projects(
              key: projectKye,
            ),
            const SizedBox(height: 20),
             Contact(
              key:contactKye ,
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.onTap,
    required this.text, required this.isSelected});
final VoidCallback onTap;
final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(text,
        style: CustomTextStyle.titleText(14,
            color:isSelected ? Colors.deepPurpleAccent : Colors.white ),
        ));
  }
}

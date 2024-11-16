

import 'package:animation/config/text_style.dart';
import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("My Skills",
        style: CustomTextStyle.titleText(28),
        ),
        const Wrap(
          children: [
          SkillsCard(data:"Dart"),
          SkillsCard(data:"Flutter"),
          SkillsCard(data:"Bloc"),
          SkillsCard(data:"Provider"),
          SkillsCard(data:"Getx"),
          SkillsCard(data:"REST full APIs"),
          SkillsCard(data:"Figma"),
          SkillsCard(data:"MVC"),
          SkillsCard(data:"MVVM"),
          SkillsCard(data:"Firebase"),
          SkillsCard(data:"Google map API"),
          ],
        ),
      ],
    );
  }
}


class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key, required this.data});
final String data;
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: const Color(0xFF282727),
      margin: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8)
        ),
        child: Text(data,
          style: CustomTextStyle.descriptionText(14),
        ),
      ),
    );
  }
}

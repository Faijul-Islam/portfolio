import 'package:flutter/material.dart';

class CustomTextStyle{
  static TextStyle descriptionText(
      double size, {
        Color color = Colors.white,
        double lineHeight = 1.0,
      }) {
    return TextStyle(
      fontSize: size,
      color: color,
     // fontFamily: 'Thasadith',
      height: lineHeight,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle titleText(
      double size, {
        Color color = Colors.deepPurpleAccent,
        double lineHeight = 1.0,
      }) {
    return TextStyle(
      fontSize: size,
      color: color,
      //fontFamily: 'Thasadith',
      height: lineHeight,
      fontWeight: FontWeight.w800,
    );
  }
}
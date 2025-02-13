import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle tittleTextBold = TextStyle(
      fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle headerTextBold = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle largeTextBold = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle mediumTextBold = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle normalTextBold = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle smallTextBold = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle smallerTextBold = TextStyle(
      fontSize: 11, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  static TextStyle tittleTextRegular = TextStyle(
      fontSize: 50, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle headerTextRegular = TextStyle(
      fontSize: 30, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle largeTextRegular = TextStyle(
      fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle mediumTextRegular = TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle normalTextRegular = TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle smallTextRegular = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
  static TextStyle smallerTextRegular = TextStyle(
      fontSize: 11, fontWeight: FontWeight.normal, fontFamily: 'Poppins');
}

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle style;
  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
    );
  }
}

import 'package:flutter/material.dart';

class TextExplanationContainer extends StatelessWidget {
  //border: Border(bottom: BorderSide(color: Color(0xFFF0F6F9),width: 1))
  final String text;

  final double height;
  final double width;
  //final double borderRadius;

  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  final double fontSize;
  final FontWeight fontWeight;
  final double borderWidth;

  const TextExplanationContainer({
    super.key,
    required this.text,
    this.height = 0,
    this.width = 278,
   // this.borderRadius = 12,
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.borderColor = const Color(0xFFF1F4F8),
    this.textColor = const Color(0xFF545454),
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
      //  borderRadius: BorderRadius.circular(borderRadius),
        border: Border(
          bottom: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }
}

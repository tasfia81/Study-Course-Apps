import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextContainer extends StatelessWidget {

  final String text;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double weight;
  final EdgeInsets padding;
  final Color? borderColor;
  final double borderWidth;

  const CustomTextContainer({
    super.key,
    required this.text,
    this.height=50,
    this.width = 318,
    this.borderRadius=14,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.fontSize = 16,
    this.weight = 500,
    this.padding = const EdgeInsets.symmetric(horizontal: 15),
    this.borderColor,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
      width: width,
      padding: padding,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null? Border.all(
          color: borderColor!,
          width: borderWidth,
        ) : null,
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          color: textColor
        ),
      ),
    );
  }
}

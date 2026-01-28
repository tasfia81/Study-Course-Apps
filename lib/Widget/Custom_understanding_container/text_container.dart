import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String text;

  final List<Widget>? optionWidgets;

  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final EdgeInsets padding;
  final Color? borderColor;
  final double borderWidth;

  const TextContainer({
    super.key,
    required this.text,
    this.optionWidgets, //  optional
    this.height = 56,
    this.width = double.infinity,
    this.borderRadius = 14,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.fontSize = 16,
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.borderColor,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
      ),
      child: Row(
        children: [
          /// -------- Text --------
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),

          /// -------- Option Boxes --------
          if (optionWidgets != null) ...optionWidgets!,
        ],
      ),
    );
  }
}

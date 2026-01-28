// import 'package:flutter/material.dart';
//
// class OptionTextBox extends StatelessWidget {
//   final String text;
//
//   const OptionTextBox({
//     super.key,
//     required this.text,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 40,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8FCFF), // background
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(
//           color: const Color(0xFFEDF8FF), // border color
//           width: 1,
//         ),
//       ),
//       child: Text(
//         text,
//         style: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w500,
//           color: Color(0xFFB1C4D0),
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class OptionTextBox extends StatelessWidget {
  final String text;

  final double height;
  final double width;
  final double borderRadius;

  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  final double borderWidth;
  final double fontSize;
  final FontWeight fontWeight;

  const OptionTextBox({
    super.key,
    required this.text,

    this.height = 40,
    this.width = 40,
    this.borderRadius = 14,

    this.backgroundColor = const Color(0xFFF8FCFF),
    this.borderColor = const Color(0xFFEDF8FF),
    this.textColor = const Color(0xFFB1C4D0),

    this.borderWidth = 1,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(

        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
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


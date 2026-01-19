import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthRichText extends StatelessWidget {
  final String firstText;
  final String actionText;
  final VoidCallback onTap;
  final Color actionColor;
  final double fontSize;

  const AuthRichText({
    super.key,
    required this.firstText,
    required this.actionText,
    required this.onTap,
    this.actionColor = const Color(0xFF1153A0),
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: actionText,
            style: TextStyle(
              color: actionColor,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}

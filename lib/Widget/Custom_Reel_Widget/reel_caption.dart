import 'package:flutter/material.dart';

class ReelCaption extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;

  const ReelCaption({
    super.key,
    required this.isExpanded,
    required this.onTap,
  });

  static const String shortText =
      'Start Learning Vocabulary Today!\nSo what is necessary to learn vocabulary in today\'s world...';

  static const String fullText =
      'Start Learning Vocabulary Today!\n'
      'So what is necessary to learn vocabulary in today\'s world. '
      'Everyone needs strong vocabulary skills to communicate effectively, '
      'build confidence and grow professionally.';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: isExpanded ? fullText : shortText,
            ),
            TextSpan(
              text: isExpanded ? '  Read less' : '  Read more',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CustomVocabularyExplanation extends StatelessWidget {
  const CustomVocabularyExplanation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 102,
      decoration: BoxDecoration(
        color: Color(0xFFF4FBFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFDBF1FF),width: 1),
      ),
      child: Center(
        child: Text('Vocabulary',style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF008DE7)
        ),),
      ),
    );
  }
}

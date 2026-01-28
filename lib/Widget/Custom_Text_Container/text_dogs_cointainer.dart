import 'package:flutter/material.dart';

class TextDogsContainer extends StatelessWidget {
  const TextDogsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xFFF6FAFF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 16),
        child: Text('Q. My dog is a little __ , especially when around other dogs.',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF545454),
          ),
        ),
      ),
    );
  }
}
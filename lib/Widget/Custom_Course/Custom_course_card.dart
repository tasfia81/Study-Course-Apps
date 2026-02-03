import 'package:flutter/material.dart';
import '../Custom_TextSpan/custom_text_span.dart';
import '../Custom_Tow_Button/custom_tow_button.dart';

class CustomCourseCard extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onButtonChanged;

  const CustomCourseCard({
    super.key,
    required this.selectedIndex,
    required this.onButtonChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF1F5F9)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'English Tenses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
                Text(
                  '32 mins ago',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF545454),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            /// Level Text
            RichText(
              text: TextSpan(
                children: [
                  CustomTextSpan.build(
                    text: 'Level - ',
                    color: const Color(0xFF545454),
                  ),
                  CustomTextSpan.build(
                    text: 'Intermediate',
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF545454),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            /// Instructor Row
            Row(
              children: const [
                CircleAvatar(child: Text('R')),
                SizedBox(width: 6),
                Text(
                  'Denisa Ozel',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF363636),
                  ),
                )
              ],
            ),

            const SizedBox(height: 12),

            /// Buttons
            CustomTowButton(
              leftText: 'Get back to it',
              rightText: 'Course Details',
              selectedIndex: selectedIndex,
              onChanged: onButtonChanged,
            )
          ],
        ),
      ),
    );
  }
}

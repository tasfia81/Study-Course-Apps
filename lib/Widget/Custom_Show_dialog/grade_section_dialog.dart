import 'package:flutter/material.dart';
import 'grade_option_tile.dart';

class GradeSelectionDialog extends StatefulWidget {
  final Function(String) onGradeSelected;

  const GradeSelectionDialog({
    super.key,
    required this.onGradeSelected,
  });

  @override
  State<GradeSelectionDialog> createState() =>
      _GradeSelectionDialogState();
}

class _GradeSelectionDialogState extends State<GradeSelectionDialog> {
  int selectedIndex = -1;

  final List<String> grades = [
    "Grade 1 - 3",
    "Grade 4 - 6",
    "Grade 7 - 9",
    "SSC / O Level",
    "HSC / A Level",
    "University",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            /// Title
            const Text(
              "Select Your Current Grade",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            /// Grade List
            ListView.separated(
              shrinkWrap: true,
              itemCount: grades.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return GradeOptionTile(
                  title: grades[index],
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                );
              },
            ),

            const SizedBox(height: 20),

            /// Get Started Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF008DE7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: selectedIndex == -1
                    ? null
                    : () {
                  widget.onGradeSelected(grades[selectedIndex]);
                  Navigator.pop(context);
                },
                child: const Text("Get Started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

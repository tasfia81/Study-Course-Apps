import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final bool selected;

  const CategoryChip({
    super.key,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: 34,
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xFFE5F5FF) // selected bg
            : const Color(0xFFFFFFFF), // unselected bg
        border: selected? null : Border.all(
          color: Color(0xFFF1F4F8),
          width: 1
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: selected
              ? const Color(0xFF008DE7)
              : const Color(0xFF545454),
        ),
      ),
    );
  }
}

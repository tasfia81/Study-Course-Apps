import 'package:flutter/material.dart';
import '../../Utils/app_colors.dart';


class CustomSelector extends StatelessWidget {
  final String title;
  final String? value;
  final bool isExpanded;
  final List<String> items;
  final VoidCallback onTap;
  final Function(String) onItemSelected;

  const CustomSelector({
    super.key,
    required this.title,
    required this.value,
    required this.isExpanded,
    required this.items,
    required this.onTap,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF737373)
        ),),

        const SizedBox(height: 6),

        /// Dropdown Header
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 54,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(value ?? "Select Option"),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),
        ),

        /// Dropdown Items
        if (isExpanded)
          Container(
            margin: const EdgeInsets.only(top: 6),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              children: items.map((item) {
                return ListTile(
                  title: Text(item,style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF232323),
                  ),),
                  onTap: () => onItemSelected(item),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}

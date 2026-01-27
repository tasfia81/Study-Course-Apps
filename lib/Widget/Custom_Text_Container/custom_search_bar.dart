import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final VoidCallback onSearchTap;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 354,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFEEF4FB),width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Text
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(
                hintText,
                style: TextStyle(
                  color: Color(0xFFA8ACB1),
                  fontSize: 14,
                ),
              ),
            ),

            ///  Search Button
            GestureDetector(
              onTap: onSearchTap,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF023F86),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

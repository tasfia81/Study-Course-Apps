import 'package:flutter/material.dart';

class ProfileStatusRow extends StatelessWidget {
  final String leftCount;
  final String leftTitle;

  final String middleCount;
  final String middleTitle;

  final String rightCount;
  final String rightTitle;

  const ProfileStatusRow({
    super.key,
    required this.leftCount,
    required this.leftTitle,
    required this.middleCount,
    required this.middleTitle,
    required this.rightCount,
    required this.rightTitle,
  });

  Widget _buildItem(String count, String title) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F1F1F),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF545454),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      height: 30,
      width: 1,
      color: const Color(0xFFE6EEF3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 354,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFFF6FAFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(child: _buildItem(leftCount, leftTitle)),
          _divider(),
          Expanded(child: _buildItem(middleCount, middleTitle)),
          _divider(),
          Expanded(child: _buildItem(rightCount, rightTitle)),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class GradeOptionTile extends StatelessWidget {
//   final String title;
//   final bool isSelected;
//   final VoidCallback onTap;
//
//   const GradeOptionTile({
//     super.key,
//     required this.title,
//     required this.isSelected,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(14),
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: isSelected
//                 ? const Color(0xFF008DE7)
//                 : const Color(0xFFE6EEF3),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//
//             /// Selected Indicator
//             if (isSelected)
//               const Icon(
//                 Icons.check_circle,
//                 color: Color(0xFF008DE7),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }

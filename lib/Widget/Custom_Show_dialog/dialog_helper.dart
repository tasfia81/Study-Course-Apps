import 'package:flutter/material.dart';
import 'grade_section_dialog.dart';

class DialogHelper {
  static void showGradeDialog({
    required BuildContext context,
    required Function(String) onSelected,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return GradeSelectionDialog(
          onGradeSelected: onSelected,
        );
      },
    );
  }
}

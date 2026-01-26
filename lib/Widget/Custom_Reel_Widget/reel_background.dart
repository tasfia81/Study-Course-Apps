import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';

class ReelBackground extends StatelessWidget {
  const ReelBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image.asset(
          AssetsPaths.studyingTogether1,
          fit: BoxFit.cover,
        )
    );
  }
}

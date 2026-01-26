import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';

class ReelCard extends StatelessWidget {
  final bool isBig;

  const ReelCard({super.key, this.isBig = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBig ? 260 : 180, // big / small height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
        image: const DecorationImage(
          image: AssetImage(AssetsPaths.studyingTogether),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vocabulary 101',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Image.asset(AssetsPaths.unSplashAvatar,height: 24,width: 24,),
                SizedBox(width: 3,),
                Text('Jessica Roy',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF)
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';

class ReelCard extends StatelessWidget {
  const ReelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage(AssetsPaths.studyingTogether),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // gradient: LinearGradient(
          //     colors: [
          //       Colors.black.withOpacity(0.6),
          //       Colors.transparent,
          //     ],
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          // ),
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

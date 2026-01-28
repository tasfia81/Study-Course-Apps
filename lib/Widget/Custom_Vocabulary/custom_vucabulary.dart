import 'package:flutter/material.dart';

import '../../Utils/assets_paths.dart';

class CustomVocabulary extends StatelessWidget {
  const CustomVocabulary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      //height: 0,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xFFF0F6F9),width: 1))
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 38,
              width: 102,
              decoration: BoxDecoration(
                color: Color(0xFFF4FBFF),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFDBF1FF),width: 1),
              ),
              child: Center(
                child: Text('Vocabulary',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF008DE7)
                ),),
              ),
            ),
            //Image.asset(AssetsPaths.watch,height: 16,width: 16,),
            Image.asset(AssetsPaths.watchTime,height: 22,width: 65,),
            // Text('23.03s',style: TextStyle(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w500,
            //     color: Color(0xFF545454)
            // ),)
          ],
        ),
      ),
    );
  }
}

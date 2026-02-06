import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Get.back();
          },
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_left_outlined))),
        SizedBox(width: 4,),
        Text('Back',style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000)
        ),)
      ],
    );
  }
}
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_TextSpan/custom_text_span.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({
    super.key,
    required File? profileImage,
  }) : _profileImage = profileImage;

  final File? _profileImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xFFEDF8FF),
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!) : null,
                child: _profileImage == null
                    ? const Icon(
                  Icons.person,
                  size: 50,
                  color: Color(0xFF9DB7CC),
                ) : null,
              ),
              ///---------------------------- Camera Icon ----------------------
              Positioned(
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(
                      Icons.camera_alt,
                      size: 16,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 12,),
        Text(
          'Jessica Roy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F1F1F),
          ),
        ),
        const SizedBox(height: 8,),
        Center(
          child: RichText(text: TextSpan(
            children: [
              CustomTextSpan.build(
                  text: 'Joined since - ',
                color: Color(0xFF545454),
                fontWeight: FontWeight.w400,

              ),
              CustomTextSpan.build(
                  text: 'June 2024',
                  color: Color(0xFF545454),
                fontWeight: FontWeight.w600,
              )
            ]
          )),
        )
      ],
    );
  }
}
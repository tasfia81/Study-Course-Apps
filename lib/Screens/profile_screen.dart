import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';
import 'package:task_manager_pro/Widget/Custom_Course/Custom_course_card.dart';
import 'package:task_manager_pro/Widget/Custom_Profile_Status/custom_profile_status.dart';
import 'package:task_manager_pro/Widget/Custom_Tow_Button/custom_tow_button.dart';

import '../Widget/Custom_Image_Picker/custom_image_picker.dart';
import '../Widget/Custom_TextSpan/custom_text_span.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 0;
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  Image.asset(AssetsPaths.settingIcon,height: 24,width: 24,),
                ],
              ),
              const SizedBox(height: 32,),
              ///----------------------- Profile Image Picker ---------------------------
              CustomImagePicker(profileImage: _profileImage),
              const SizedBox(height: 15,),
              Center(
                child: ProfileStatusRow(
                    leftCount: '05', leftTitle: 'In Progress',
                    middleCount: '01', middleTitle: 'Completed',
                    rightCount: '50', rightTitle: 'Following'
                ),
              ),
              const SizedBox(height: 20,),
              Text('My courses',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1F1F1F),
              ),),
              const SizedBox(height: 15,),
              CustomCourseCard(
                  selectedIndex: selectedIndex,
                  onButtonChanged: (index){
                    setState(() {
                      selectedIndex = index;
                    });

              }),
              const SizedBox(height: 10,),
              CustomCourseCard(
                  selectedIndex: selectedIndex,
                  onButtonChanged: (index){
                    setState(() {
                      selectedIndex = index;
                    });

                  }),
        
            ],
          ),
        ),
      ),
    );
  }
}



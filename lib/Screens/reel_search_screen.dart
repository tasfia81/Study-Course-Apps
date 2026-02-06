import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/custom_search_bar.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/custom_text_container.dart';
import 'package:get/get.dart';

class ReelSearchScreen extends StatefulWidget {
  const ReelSearchScreen({super.key});

  @override
  State<ReelSearchScreen> createState() => _ReelSearchScreenState();
}

class _ReelSearchScreenState extends State<ReelSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
                child: CustomBackButton()
            ),
            Container(
              height: 400,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xFFF1F5F9),width: 1)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CustomSearchBar(
                        hintText: 'Search', onSearchTap: (){
                      print('Search tapped');
                    }),
                    const SizedBox(height: 8,),
                    CustomTextContainer(
                      text: 'Trigonometry',
                      backgroundColor: Colors.white,
                      borderColor: Color(0xFFF1F4F8),
                      borderRadius: 14,
                      borderWidth: 1,
                    ),
                    const SizedBox(height: 8,),
                    CustomTextContainer(
                        text: 'Vocabulary',
                      backgroundColor: Colors.white,
                      borderColor: Color(0xFFF1F4F8),
                      borderRadius: 14,
                      borderWidth: 1,
                    ),
                    const SizedBox(height: 8,),
                    CustomTextContainer(
                        text: 'Grammar',
                      backgroundColor: Colors.white,
                      borderColor: Color(0xFFF1F4F8),
                      borderRadius: 14,
                      borderWidth: 1,
                    ),
                    const SizedBox(height: 8,),
                    CustomTextContainer(
                        text: 'Geography',
                      backgroundColor: Colors.white,
                      borderColor: Color(0xFFF1F4F8),
                      borderRadius: 14,
                      borderWidth: 1,
                    ),
                    const SizedBox(height: 8,),
                    CustomTextContainer(
                        text: 'XXX',
                      backgroundColor: Colors.white,
                      borderColor: Color(0xFFF1F4F8),
                      borderRadius: 14,
                      borderWidth: 1,
                    ),
                  ],
                ),
              )
              
            )
          ],
        ),
      ),
    );
  }
}


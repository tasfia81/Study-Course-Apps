import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Button/app_primary_button.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/custom_text_container.dart';
import 'package:task_manager_pro/Widget/Custom_understanding_container/text_container.dart';

import '../Widget/Custom_Text_Container/text_dogs_cointainer.dart';
import '../Widget/Custom_Vocabulary/custom_vucabulary.dart';
import '../Widget/Custom_understanding_container/option_text_box.dart';

class UnderstandingScreen extends StatefulWidget {
  const UnderstandingScreen({super.key});

  @override
  State<UnderstandingScreen> createState() => _UnderstandingScreenState();
}

class _UnderstandingScreenState extends State<UnderstandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(),
            const SizedBox(height: 10,),
            Text('  Let’s test your understanding!',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF1F1F1F)
            ),),
            const SizedBox(height: 10,),
            CustomVocabulary(),
            const SizedBox(height: 10,),
            TextDogsContainer(),
            const SizedBox(height: 15,),
            TextContainer(
              height: 56,
                width: double.maxFinite,
                text: 'Scared',
              borderRadius: 16,
              borderWidth: 1,
              borderColor: Color(0xFFF1F4F8),
              backgroundColor: Colors.white,
              optionWidgets: [
                OptionTextBox(
                  backgroundColor: Color(0xFFF8FCFF),
                  borderColor: Color(0xFFEDF8FF),
                  textColor: Color(0xFFB1C4D0),
                  text: 'A',
                )
              ],
            ),
            const SizedBox(height: 8,),
            TextContainer(
                height: 56,
              width: double.maxFinite,
                text: 'Frightening',
              borderRadius: 16,
              borderWidth: 1,
              borderColor: Color(0xFFF1F4F8),
              backgroundColor: Colors.white,
              optionWidgets: [
                OptionTextBox(
                  backgroundColor: Color(0xFFF8FCFF),
                  borderColor: Color(0xFFEDF8FF),
                  textColor: Color(0xFFB1C4D0),
                  text: 'B',
                )
              ],
            ),
            const SizedBox(height: 8,),
            TextContainer(
                height: 56,
              width: double.maxFinite,
                text: 'Timid',
              borderRadius: 16,
              borderWidth: 1,
              borderColor: Color(0xFFF1F4F8),
              backgroundColor: Colors.white,
              optionWidgets: [
                OptionTextBox(
                  backgroundColor: Color(0xFFF8FCFF),
                  borderColor: Color(0xFFEDF8FF),
                  textColor: Color(0xFFB1C4D0),
                  text: 'C',
                )
              ],
            ),
            const SizedBox(height: 8,),
            TextContainer(
                height: 56,
              width: double.maxFinite,
                text: 'Concerned',
              borderRadius: 16,
              borderWidth: 1,
              borderColor: Color(0xFFF1F4F8),
              backgroundColor: Colors.white,
              optionWidgets: [
                OptionTextBox(
                  backgroundColor: Color(0xFFF8FCFF),
                  borderColor: Color(0xFFEDF8FF),
                  textColor: Color(0xFFB1C4D0),
                  text: 'B',
                )
              ],
            ),
            const SizedBox(height: 20,),
            AppPrimaryButton(
                text: 'Next',
                onTap: (){

                })
          ],
        ),
      ),
    );
  }
}




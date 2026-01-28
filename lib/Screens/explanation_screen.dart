import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Button/app_primary_button.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/custom_text_container.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/text_dogs_cointainer.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/text_explanation_container.dart';
import 'package:task_manager_pro/Widget/Custom_understanding_container/option_text_box.dart';

import '../Widget/Custom_Vocabulary/custom_vucabulary_explanation.dart';
import '../Widget/Custom_understanding_container/text_container.dart';

class ExplanationScreen extends StatefulWidget {
  const ExplanationScreen({super.key});

  @override
  State<ExplanationScreen> createState() => _ExplanationScreenState();
}

class _ExplanationScreenState extends State<ExplanationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              const SizedBox(height: 10,),
              Text('  Well done! Here is the Explanation',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF1F1F1F)
              ),),
              const SizedBox(height: 10,),
              Container(
                width: double.maxFinite,
                //height: 0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Color(0xFFF0F6F9),width: 1))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      CustomVocabularyExplanation(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18,),
              TextDogsContainer(),
              const SizedBox(height: 18,),
              Container(
                height: 437,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xFFEDF2F9))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: TextContainer(
                        height: 56,
                        width: double.maxFinite,
                        text: 'Timid (膽小)',
                        borderRadius: 16,
                        borderWidth: 1,
                        borderColor: Color(0xFFDBF1FF),
                        backgroundColor: Color(0xFFF4FBFF),
                        optionWidgets: [
                          OptionTextBox(
                            backgroundColor: Colors.white,
                              textColor: Color(0xFF008DE7),
                              text: 'C',
                          )
                        ],

                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Explanation',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF1F1F1F)
                          ),),
                          TextExplanationContainer(
                            height: 100,
                            width: 278,
                            text: 'Timid的意思是缺乏勇氣或信心；容易受\n到驚嚇，這適合描述一隻狗在其他狗的\n周圍表現出的從屬或緊張的行為。',
                            fontSize: 14,
                            backgroundColor: Colors.white,
                            borderWidth: 1,
                            borderColor: Color(0xFFF1F4F8),
                          ),
                          const SizedBox(height: 12,),
                          TextExplanationContainer(
                            height: 100,
                            width: 278,
                            text: 'Scary (可怕) 和Frightening (嚇人) 表示\n狗會讓其他人或動物感到恐懼，這與狗對\n其他狗的反應不符。',
                            fontSize: 14,
                            backgroundColor: Colors.white,
                            borderWidth: 1,
                            borderColor: Color(0xFFF1F4F8),
                          ),
                          const SizedBox(height: 12,),
                          Text('  Concerned (擔憂) 通常不用來描述狗與\n  其他狗相處時感到壓力的反應。',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF545454)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              AppPrimaryButton(
                  text: 'Continue',
                  onTap: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}

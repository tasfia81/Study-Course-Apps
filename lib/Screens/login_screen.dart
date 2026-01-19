import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Button/app_primary_button.dart';
import 'package:task_manager_pro/Widget/Custom_RichText/auth_rich_text.dart';
import 'package:task_manager_pro/Widget/Custom_Role/role_selector_item.dart';
import 'package:task_manager_pro/Widget/Custom_TextFormField/text_form_field.dart';
import '../Widget/custom_card/learnova_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0; // 0 = Student, 1 = Teacher
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LearnovaCard(),
              const SizedBox(height: 28),
              const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F1F1F),
                ),
              ),
              const SizedBox(height: 15),

              /// ---------------- Student / Teacher ----------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoleSelectorItem(
                      title: 'Student', index: 0, selectedIndex: selectedIndex,
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      }
                  ),
                  RoleSelectorItem(
                      title: 'Teacher', index: 1, selectedIndex: selectedIndex,
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      }
                  )
                ],
              ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Align(
                     alignment: Alignment.centerLeft,
                   ),
                   SizedBox(height: 10,),
                   ///--------------- Email ------------------------
                   Text('Email',style: TextStyle(
                     fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF737373),
                   ),),
                   SizedBox(height: 8,),
                   CustomTextFormField(
                       hintText: 'Enter your email',
                       controller: emailController,
                   ),
                   SizedBox(height: 8,),
                   ///--------------- Email ------------------------
                   Text('Password',style: TextStyle(
                     fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF737373)
                   ),),
                   SizedBox(height: 8,),
                   CustomTextFormField(
                       hintText: 'Password',
                     controller: passwordController,
                     isPassword: false,
                   ),
                   SizedBox(height: 10,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Align(
                         alignment: Alignment.centerRight,
                       ),
                       GestureDetector(
                         onTap: (){},
                         child: Text('Forgot Password?',style: TextStyle(
                           fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF008DE7)
                         ),),
                       ),
                     ],
                   ),
                   SizedBox(height: 12,),
                   AppPrimaryButton(
                       text: 'Log In', onTap: (){}
                   ),
                   SizedBox(height: 10,),
                   GestureDetector(
                     onTap: (){},
                     child: Container(
                       height: 50,
                       width: double.maxFinite,
                       decoration: BoxDecoration(
                         color: const Color(0xFFFFFFFF),
                         borderRadius: BorderRadius.circular(12),
                         border: Border.all(
                             color: Color(0xFFF1F4F8),width: 1
                         )
                       ),
                       child: Center(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset(AssetsPaths.googleLogo,height: 24,width: 25.42,),
                             SizedBox(width: 8,),
                             Text('Login with Google',style: TextStyle(
                               fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF363636)
                             ),),
                           ],
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 12,),
                   GestureDetector(
                     onTap: (){},
                     child: RichText(
                         text: TextSpan(
                       style: TextStyle(fontSize: 14, color: Color(0xFF1F1F1F)),
                       children: [
                         TextSpan(text: 'New to Learnova? '),
                         TextSpan(
                           text: 'Create an Account',style: TextStyle(
                           color: Color(0xFF008DE7)
                         )
                         )
                       ]
                     )),
                   ),
                   // AuthRichText(
                   //     firstText: 'New to Learnova? ', actionText: 'Create an Account', onTap: (){}
                   // ),
                   SizedBox(height: 40,),
                   Image.asset(AssetsPaths.ellipse1,)
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:task_manager_pro/Core/AppRoute/app_route.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Button/app_primary_button.dart';
import 'package:task_manager_pro/Widget/Custom_Role/role_selector_item.dart';
import 'package:task_manager_pro/Widget/Custom_Show_dialog/dialog_helper.dart';
import 'package:task_manager_pro/Widget/Custom_TextFormField/text_form_field.dart';
import '../Widget/custom_card/learnova_card.dart';
import 'package:get/get.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  int selectedIndex = 0;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [

            /// ================= SCROLL CONTENT =================
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 180), // bottom image space
              child: Column(
                children: [
                  LearnovaCard(),
                  const SizedBox(height: 28),

                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// -------- Student / Teacher --------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoleSelectorItem(
                        title: 'Student',
                        index: 0,
                        selectedIndex: selectedIndex,
                        onTap: () {
                          setState(() => selectedIndex = 0);
                        },
                      ),
                      RoleSelectorItem(
                        title: 'Teacher',
                        index: 1,
                        selectedIndex: selectedIndex,
                        onTap: () {
                          setState(() => selectedIndex = 1);
                        },
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///----------- Name -----------------
                        const Text('Name',style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w400,
                          color: Color(0xFF737373)
                        ),),
                        const SizedBox(height: 8,),
                        CustomTextFormField(
                            hintText: 'Enter your name',
                            controller: nameController,
                        ),
                        ///-------------- Email ------------------
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF737373),
                          ),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                          hintText: 'Enter your email',
                          controller: emailController,
                        ),

                        const SizedBox(height: 12),

                        ///---------------- Password -----------------

                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF737373),
                          ),
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormField(
                          hintText: 'Password',
                          controller: passwordController,
                          isPassword: false,
                        ),
                        const SizedBox(height: 8,),

                        ///---------------- Confirm Password -----------------

                        const Text('Confirm Password',style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w400,
                            color: Color(0xFF737373)
                        ),),
                        const SizedBox(height: 8,),
                        CustomTextFormField(
                          isPassword: false,
                          hintText: 'Confirm Password',
                          controller: confirmPasswordController,
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF008DE7),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        AppPrimaryButton(
                          text: 'Create Account',
                          onTap: () {
                            DialogHelper.showGradeDialog(
                                context: context,
                                onSelected: (grade){
                                  Navigator.pushNamed(context, AppRoute.reelScreen);
                                }
                            );
                          },
                        ),
                        const SizedBox(height: 16),

                        ///------------------- Bottom Text -------------------

                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.logIn);
                          },
                          child: Center(
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF545454),
                                ),
                                children: [
                                  TextSpan(text: 'Already have an account? '),
                                  TextSpan(
                                    text: 'Log In',
                                    style: TextStyle(
                                      color: Color(0xFF008DE7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// ================= FIXED BOTTOM IMAGE =================
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: Image.asset(
                  AssetsPaths.ellipse3,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

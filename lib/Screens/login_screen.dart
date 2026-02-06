import 'package:flutter/material.dart';
import 'package:task_manager_pro/Core/AppRoute/app_route.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Button/app_primary_button.dart';
import 'package:task_manager_pro/Widget/Custom_Role/role_selector_item.dart';
import 'package:task_manager_pro/Widget/Custom_TextFormField/text_form_field.dart';
import '../Widget/custom_card/learnova_card.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    'Log In',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// ---------------- Student / Teacher ------------------
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

                        ///------------------- Email ---------------------
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

                        ///-------------------- Password --------------------------
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
                          text: 'Log In',
                          onTap: () {
                            Get.toNamed(AppRoute.homeScreen);
                          },
                        ),

                        const SizedBox(height: 10),

                        ///------------------------- Google Login --------------------------
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AssetsPaths.googleLogo,
                                  height: 24,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Login with Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF363636),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        ///--------------- Bottom Text --------------
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.createAccount);
                          },
                          child: Center(
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF1F1F1F),
                                ),
                                children: [
                                  TextSpan(text: 'New to Learnova? '),
                                  TextSpan(
                                    text: 'Create an Account',
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

            /// =================  FIXED BOTTOM IMAGE =================
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: Image.asset(
                  AssetsPaths.ellipse1,
                  height: 120,
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


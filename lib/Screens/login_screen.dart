import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';
import 'package:task_manager_pro/Widget/Custom_Role/role_selector_item.dart';
import '../Widget/custom_card/learnova_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0; // 0 = Student, 1 = Teacher

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}



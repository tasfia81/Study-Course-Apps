import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';

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
      body: Column(
        children: [
          CustomBackButton(),
        ],
      ),
    );
  }
}

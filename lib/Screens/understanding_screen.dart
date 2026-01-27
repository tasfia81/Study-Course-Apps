import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Button/back_button.dart';

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
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            CustomBackButton(),
          ],
        ),
      ),
    );
  }
}

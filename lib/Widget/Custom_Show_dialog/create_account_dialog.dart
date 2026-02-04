import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Text_Container/custom_text_container.dart';
import '../../Utils/app_colors.dart';
import 'custom_selector.dart';

class CreateAccountDialog extends StatefulWidget {
  final VoidCallback onGetStarted;

  const CreateAccountDialog({
    super.key,
    required this.onGetStarted,
  });

  @override
  State<CreateAccountDialog> createState() => _CreateAccountDialogState();
}

class _CreateAccountDialogState extends State<CreateAccountDialog> {

  bool isGradeExpanded = false;
  bool isHearExpanded = false;

  String? selectedGrade;
  String? selectedHear;

  final List<String> gradeList = [
    "Primary 1",
    "Primary 2",
    "Primary 3",
    "Primary 4",
    "Primary 5",
    "From 1",
    "From 2",
    "From 3",
    "From 4",
    "From 5",
    "From 6",
  ];

  final List<String> hearList = [
    "Instagram",
    "Medium",
    "Threads",
    "Friends",
    "School",
    "Teacher",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
              const Text(
                "Personalizing course\naccording to your profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1F1F1F)
                ),
              ),
      
              const SizedBox(height: 20),
              Text('current school',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF737373)
              ),),
              const SizedBox(height: 8,),
              CustomTextContainer(
                  text: "Diocesan Boys' School",
                width: double.maxFinite,
                height: 54,
                borderRadius: 12,
                borderColor: Color(0xFFF1F4F8),
                borderWidth: 1,
              ),
              const SizedBox(height: 8,),
              Text('Elective Subject',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF737373)
              ),),
              const SizedBox(height: 8,),
              CustomTextContainer(
                text: "Diocesan Boys' School",
                width: double.maxFinite,
                height: 54,
                borderRadius: 12,
                borderColor: Color(0xFFF1F4F8),
                borderWidth: 1,
              ),
              const SizedBox(height: 8,),
      
              /// Grade Selector
              CustomSelector(
                title: "Current Grade",
                value: selectedGrade,
                isExpanded: isGradeExpanded,
                items: gradeList,
                onTap: () {
                  setState(() {
                    isGradeExpanded = !isGradeExpanded;
                    isHearExpanded = false;
                  });
                },
                onItemSelected: (val) {
                  setState(() {
                    selectedGrade = val;
                    isGradeExpanded = false;
                  });
                },
              ),
      
              const SizedBox(height: 15),
      
              /// Hear Selector
              CustomSelector(
                title: "How did you hear about us?",
                value: selectedHear,
                isExpanded: isHearExpanded,
                items: hearList,
                onTap: () {
                  setState(() {
                    isHearExpanded = !isHearExpanded;
                    isGradeExpanded = false;
                  });
                },
                onItemSelected: (val) {
                  setState(() {
                    selectedHear = val;
                    isHearExpanded = false;
                  });
                },
              ),
      
              const SizedBox(height: 25),
      
              /// Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    widget.onGetStarted();
                  },
                  child: const Text("Get Started",style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

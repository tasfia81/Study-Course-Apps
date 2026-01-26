import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_pro/Core/AppRoute/app_route.dart';
import 'package:task_manager_pro/Screens/home_screen.dart';
import 'package:task_manager_pro/Screens/login_screen.dart';
import 'package:task_manager_pro/Screens/main_bottom_nav_bar.dart';
import 'package:task_manager_pro/Screens/reel_screen.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Card/reel_card.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppRoute.routes,
     // home: LoginScreen(),
      //home: MainBottomNavBar(),
      //home: ReelCard(),
     // home: HomeScreen(),
      home: ReelScreen(),
    );
  }
}

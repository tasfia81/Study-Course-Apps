import 'package:get/get.dart';
import 'package:task_manager_pro/Screens/create_screen.dart';
import 'package:task_manager_pro/Screens/login_screen.dart';
import 'package:task_manager_pro/Screens/reel_screen.dart';
import 'package:task_manager_pro/Screens/reel_search_screen.dart';

class AppRoute{

  ///=================================== Initial Routes ===========================================
  static const String logIn = '/login_screen';
  static const String createAccount = '/create_screen';
  static const String reelScreen = '/reel_screen';
  static const String reelSearchScreen = '/reel_search_screen';

  static List<GetPage> routes =[

    ///================================= Authentication Routes ===================================
    GetPage(name: logIn, page: () => const LoginScreen()),
    GetPage(name: createAccount, page: () => const CreateScreen()),
    GetPage(name: reelScreen, page: () => const ReelScreen()),
    GetPage(name: reelSearchScreen, page: () => const ReelSearchScreen()),
  ];
}
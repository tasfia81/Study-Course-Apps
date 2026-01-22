import 'package:get/get.dart';
import 'package:task_manager_pro/Screens/create_screen.dart';
import 'package:task_manager_pro/Screens/login_screen.dart';

class AppRoute{

  ///=================================== Initial Routes ===========================================
  static const String logIn = '/login_screen';
  static const String createAccount = '/create_screen';

  static List<GetPage> routes =[

    ///================================= Authentication Routes ===================================
    GetPage(name: logIn, page: () => const LoginScreen()),
    GetPage(name: createAccount, page: () => const CreateScreen()),
  ];
}
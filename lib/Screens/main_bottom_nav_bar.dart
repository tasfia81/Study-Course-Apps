import 'package:flutter/material.dart';
import 'package:task_manager_pro/Screens/home_screen.dart';
import 'package:task_manager_pro/Screens/profile_screen.dart';
import 'package:task_manager_pro/Screens/test_vucabulary_screen.dart';
import 'package:task_manager_pro/Screens/watching_reels_screen.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    WatchingReelsScreen(),
    TestVucabularyScreen(),
    Center(child: Text('Book Square')),
    ProfileScreen(),
  ];

  // 🔹 Same border radius everywhere
  final BorderRadius _topBorderRadius = const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_currentIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: _topBorderRadius, // ✅ only top rounded
        ),

        child: ClipRRect(
          borderRadius: _topBorderRadius, // ✅ same radius (VERY IMPORTANT)
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF1153A0),
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsPaths.homeIcon,
                  height: 24,
                  width: 24,
                ),
                activeIcon: Image.asset(
                  AssetsPaths.homeActiveIcon,
                  height: 24,
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsPaths.shortsIcon,
                  height: 24,
                  width: 24,
                ),
                activeIcon: Image.asset(
                  AssetsPaths.shortsActiveIcon,
                  height: 24,
                  width: 24,
                ),

                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsPaths.lampOnIcon,
                  height: 24,
                  width: 24,
                ),
                activeIcon: Image.asset(
                  AssetsPaths.lampOnActiveIcon,
                  height: 24,
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsPaths.bookSquareIcon,
                  height: 24,
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsPaths.profileIcon,
                  height: 24,
                  width: 24,
                ),
                activeIcon: Image.asset(
                  AssetsPaths.profileActiveIcon,
                  height: 38,
                  width: 24,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

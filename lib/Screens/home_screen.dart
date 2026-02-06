import 'package:flutter/material.dart';
import 'package:task_manager_pro/Core/AppRoute/app_route.dart';
import 'package:task_manager_pro/Widget/Custom_Category_Chip/category_chip.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Grid/reel_grid.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xFFFFFFFF),
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///----------------------- Header ---------------------------
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Learn Through Watching Reels',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F1F1F),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.reelSearchScreen);
                      },
                      icon: const Icon(Icons.search),

                    ),
                  ],
                ),
              ),

              ///----------------------- Tabs ----------------------------
              const TabBar(
                labelColor: Color(0xFF023F86),
                indicatorColor: Color(0xFF023F86),
                unselectedLabelColor: Color(0xFF727477),
                tabs: [
                  Tab(text: 'Trending'),
                  Tab(text: 'New'),
                  Tab(text: 'Following'),
                ],
              ),

              ///------------------ Category Chips -----------------------
              const SizedBox(height: 8),
              SizedBox(
                height: 36,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    CategoryChip(title: 'All', selected: true),
                    CategoryChip(title: '中文'),
                    CategoryChip(title: 'English'),
                    CategoryChip(title: 'Mathematics'),
                    CategoryChip(title: 'Chemistry'),
                    CategoryChip(title: 'Physics'),
                  ],
                ),
              ),

              ///------------------ Tab Content --------------------------
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.reelScreen);
                  },
                  child: TabBarView(
                    children: const [
                      ReelGrid(),
                      ReelGrid(),
                      ReelGrid(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



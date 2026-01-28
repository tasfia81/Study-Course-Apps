import 'package:flutter/material.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Widget/reel_background.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Widget/reel_caption.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Widget/reel_like_button.dart';
import 'package:task_manager_pro/Widget/Custom_Reel_Widget/reel_user_row.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {

  bool isFollowing = false;
  bool isLiked = false;
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const ReelBackground(),
          Positioned(
            left: 16,
              right: 16,
              bottom: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReelUserRow(
                      isFollowing: isFollowing,
                      isLiked: isLiked,
                      onFollowTap: (){
                        setState(() {
                          isFollowing =! isFollowing;
                        });
                      },
                    onLikedTap: () {
                      isLiked =! isLiked;
                  },
                  ),
                  const SizedBox(height: 8,),
                  ReelCaption(
                      isExpanded: isExpended, onTap: (){
                        setState(() {
                          isExpended =! isExpended;
                        });
                      })
                ],
              )
          )
        ],
      ),
    );
  }
}

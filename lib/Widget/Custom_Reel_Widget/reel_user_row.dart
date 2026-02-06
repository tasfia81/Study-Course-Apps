import 'package:flutter/material.dart';
import 'package:task_manager_pro/Utils/assets_paths.dart';

class ReelUserRow extends StatelessWidget {
  final bool isFollowing;
  final bool isLiked;
  final VoidCallback onFollowTap;
  final VoidCallback onLikedTap;

  const ReelUserRow({
    super.key,
    required this.isFollowing,
    required this.onFollowTap,
    required this.isLiked,
    required this.onLikedTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(AssetsPaths.unSplashAvatar2),
        ),
        const SizedBox(width: 8),
        const Text(
          'Jessica Roy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 10),

        GestureDetector(
          onTap: onFollowTap,
          child: Container(
            height: 32,
            width: 85,
            padding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: isFollowing ? Colors.transparent : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                 color: isFollowing? Colors.black : Colors.white
              )
            ),
            child: Text(
              isFollowing ? 'Followed' : 'Follow',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color:
                isFollowing ? Colors.black : Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(width: 8,),
        GestureDetector(
          onTap: onLikedTap,
          child:
            Image.asset(
              height: 40,
                width: 40,
                isLiked? AssetsPaths.likedActive : AssetsPaths.likedUnActive
            )
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../Utils/assets_paths.dart';

class LearnovaCard extends StatelessWidget {
  const LearnovaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 241,
          width: 512,
          decoration: BoxDecoration(
              color: Color(0xFF023F86),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
          ),
        ),
        Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AssetsPaths.learnovaLogo)
                ],
              ),
            ))
      ],
    );
  }
}
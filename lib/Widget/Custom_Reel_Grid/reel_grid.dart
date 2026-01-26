import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../Custom_Reel_Card/reel_card.dart';

class ReelGrid extends StatelessWidget {
  const ReelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.all(12),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      itemCount: 12,
      itemBuilder: (context, index) {
        return ReelCard(
          isBig: index % 3 == 0, //  big / small logic
        );
      },
    );
  }
}

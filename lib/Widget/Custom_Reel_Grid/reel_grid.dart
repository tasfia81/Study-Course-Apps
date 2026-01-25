import 'package:flutter/material.dart';

import '../Custom_Reel_Card/reel_card.dart';

class ReelGrid extends StatelessWidget {
  const ReelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ReelCard();
      },
    );
  }
}

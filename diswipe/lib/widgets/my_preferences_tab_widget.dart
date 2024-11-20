import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/widgets/my_preferences_card_widget.dart';
import 'package:diswipe/widgets/empty_state_widget.dart'; // Import the empty state widget
import 'package:flutter/material.dart';

class MyPreferencesTab extends StatelessWidget {
  final List<Food> likedFoods;

  const MyPreferencesTab({
    super.key,
    required this.likedFoods, 
  });

  @override
  Widget build(BuildContext context) {
    if (likedFoods.isEmpty) {
      return const EmptyStateWidget();
    }

    return ListView.builder(
      itemCount: likedFoods.length,
      itemBuilder: (context, index) {
        final food = likedFoods[index];
        return MyPreferencesCardWidget(food: food);
      },
    );
  }
}
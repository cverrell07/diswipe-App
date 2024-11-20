import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/models/restaurant_model.dart';
import 'package:diswipe/widgets/my_preferences_tab_widget.dart';
import 'package:diswipe/widgets/swiped_for_me_tab_widget.dart';
import 'package:flutter/material.dart';

class RecommendationPage extends StatelessWidget {
  final Set<String> likedFoodNames;
  final List<Food> likedFoods;
  final List<Restaurant> similarRestaurants;

  const RecommendationPage({
    super.key,
    required this.likedFoodNames,
    required this.likedFoods,
    required this.similarRestaurants,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Swiped for me"), 
              Tab(text: "My Preferences"), 
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SwipedForMeTab(likedFoods: likedFoodNames, similarRestaurants: similarRestaurants),
            MyPreferencesTab(likedFoods: likedFoods),
          ],
        ),
      ),
    );
  }
}
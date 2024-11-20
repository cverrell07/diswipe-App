import 'package:diswipe/models/restaurant_model.dart';
import 'package:diswipe/pages/restaurant_detail_page.dart';
import 'package:diswipe/widgets/recommended_food_card_widget.dart';
import 'package:diswipe/widgets/empty_state_widget.dart'; 
import 'package:flutter/material.dart';

class SwipedForMeTab extends StatelessWidget {
  final Set<String> likedFoods;
  final List<Restaurant> similarRestaurants;

  const SwipedForMeTab({
    super.key,
    required this.likedFoods,
    required this.similarRestaurants,
  });

  @override
  Widget build(BuildContext context) {
    if (similarRestaurants.isEmpty) {
      return const EmptyStateWidget();
    }

    final matchedRestaurants = similarRestaurants.where(
      (restaurant) {
        return restaurant.foods.any((food) => likedFoods.contains(food.name));
      },
    ).toList();

    if (matchedRestaurants.isEmpty) {
      return const EmptyStateWidget();
    }

    return ListView.builder(
      itemCount: matchedRestaurants.length,
      itemBuilder: (context, index) {
        final restaurant = matchedRestaurants[index];

        final matchedFoods = restaurant.foods.where(
          (food) => likedFoods.contains(food.name),
        ).toList();

        return Column(
          children: matchedFoods.map((food) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RestaurantDetailPage(
                      restaurant: restaurant,
                    ),
                  ),
                );
              },
              child: RecommendedFoodCardWidget(
                food: food,
                restaurant: restaurant,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
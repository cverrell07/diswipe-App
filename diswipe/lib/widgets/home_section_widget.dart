import 'package:diswipe/pages/restaurant_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/restaurant_card_widget.dart';
import '../models/restaurant.dart';

class HomeSectionWidget extends StatelessWidget {
  final String title;
  final List<Restaurant> restaurants;

  const HomeSectionWidget({
    super.key,
    required this.title,
    required this.restaurants,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Text(
                'View all',
                style: TextStyle(
                  color: AppColors.mainOrange,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.mainOrange,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.75,
            children: List.generate(
              restaurants.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestaurantDetailPage(
                        restaurant: restaurants[index],
                      ),
                    ),
                  );
                },
                child: RestaurantCard(restaurant: restaurants[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
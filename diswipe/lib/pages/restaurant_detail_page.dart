import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/food_card_widget.dart';
import 'package:diswipe/widgets/restaurant_info_widget.dart';
import 'package:flutter/material.dart';
import '../models/restaurant_model.dart';

class RestaurantDetailPage extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailPage({
    super.key,
    required this.restaurant
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Restaurant Detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              restaurant.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    restaurant.location,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RestaurantInfoWidget(icon: Icons.star, value: restaurant.rating.toString(), label: 'Rating'),
                      RestaurantInfoWidget(icon: Icons.timer, value: '${restaurant.minDeliveryTime} - ${restaurant.maxDeliveryTime} mins', label: 'Delivery Time'),
                      RestaurantInfoWidget(icon: Icons.reviews, value: restaurant.review.toString(), label: 'Reviews'),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(100), 
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.mainOrange.withOpacity(0.2), 
                          blurRadius: 15, 
                          offset: const Offset(0, 0), 
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search, color: AppColors.gray),
                        hintText: 'Search in ${restaurant.name}...',
                        hintStyle: const TextStyle(color: AppColors.gray, fontSize: 15.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(color: AppColors.mainOrange), 
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ...restaurant.foods.map((food) => FoodCardWidget(food: food)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

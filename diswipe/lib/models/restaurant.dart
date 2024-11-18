import 'package:diswipe/models/food_model.dart';

class Restaurant {
  final String name;
  final String imageUrl;
  final String location;
  final double distance;
  final double rating;
  final String category;
  final int minDeliveryTime;
  final int maxDeliveryTime;
  final int review;
  final List<Food> foods;

  Restaurant({
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.distance,
    required this.rating,
    required this.category,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.review,
    required this.foods
  });
}
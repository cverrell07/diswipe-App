import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/models/restaurant_model.dart';
import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class RecommendedFoodCardWidget extends StatelessWidget {
  final Food food;
  final Restaurant restaurant;

  const RecommendedFoodCardWidget({
    super.key,
    required this.food,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                food.imageUrl,
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding( 
                    padding: const EdgeInsets.only(top: 10.0, right: 12.0), 
                    child: Row(
                      children: [
                        const Icon(
                          Icons.restaurant,
                          size: 16,
                          color: AppColors.mainOrange,
                        ),
                        const SizedBox(width: 4),
                        Expanded(  
                          child: Text(
                            restaurant.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(width: 8), 
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow.shade700,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "${restaurant.rating}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "${restaurant.minDeliveryTime}-${restaurant.maxDeliveryTime} mins",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.red.shade300,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "${restaurant.distance.toStringAsFixed(1)} km",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, 
                  ),
                  Text(
                    "Rp${food.price},-",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainOrange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
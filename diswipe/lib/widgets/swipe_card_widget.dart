import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class SwipeCardWidget extends StatelessWidget {
  final Food food;
  final VoidCallback onLovePressed;
  final VoidCallback onNopePressed;

  const SwipeCardWidget({
    super.key,
    required this.food,
    required this.onLovePressed,
    required this.onNopePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            food.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFC8B0),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    food.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.white.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  if (food.isHalal)
                    const Row(
                      children: [
                        Icon(Icons.check_circle, color: Color.fromARGB(255, 158, 225, 159), size: 20),
                        SizedBox(width: 4),
                        Text(
                          "Halal Certified",
                          style: TextStyle(color: Color.fromARGB(255, 158, 225, 159), fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  else
                    const Row(
                      children: [
                        Icon(Icons.warning, color: Color.fromARGB(255, 255, 205, 205), size: 20),
                        SizedBox(width: 4),
                        Text(
                          "Not Halal",
                          style: TextStyle(color: Color.fromARGB(255, 255, 205, 205), fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  const SizedBox(height: 8),
                  Row(
                    children: List.generate(
                      food.spicyLevel,
                      (index) => const Icon(
                        Icons.whatshot,
                        color: Color.fromARGB(255, 219, 108, 108),
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${food.calories} kcal (${food.portion} portion/pcs)",
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Ingredients: ${food.ingredients}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "!!! Allergens: ${food.allergens}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 233, 172)
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Rp${food.price},-",
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onNopePressed,
                    child: Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.oldGray,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: AppColors.white,
                        size: 32,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onLovePressed,
                    child: Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.mainOrange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: AppColors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
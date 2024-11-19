import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/floating_button_widget.dart';
import 'package:diswipe/widgets/swipe_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class DiswipePage extends StatefulWidget {
  const DiswipePage({super.key});

  @override
  State<DiswipePage> createState() => _DiswipePageState();
}

class _DiswipePageState extends State<DiswipePage> {
  late MatchEngine _matchEngine;
  final List<SwipeItem> _swipeItems = [];

  final List<Food> foods = [
    Food(
      name: "Spicy Wonton",
      description:
          "Delicious, handcrafted dumplings filled with savory minced pork and fresh vegetables, wrapped in a soft dough and tossed in a special spicy chili oil.",
      imageUrl: "assets/images/spicy_wonton.jpg",
      price: 40000,
      spicyLevel: 3,
      isHalal: true,
      calories: 220,
      portion: 5,
      ingredients: "Wheat flour, minced pork, chili oil, green onion, ginger, garlic",
      allergens: "Gluten, Soy, Sesame oil",
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Juicy beef patty topped with melted cheddar cheese, crisp lettuce, tomato, and a tangy burger sauce, served in a freshly baked sesame bun.",
      imageUrl: "assets/images/classic_cheeseburger.jpg",
      price: 50000,
      spicyLevel: 0,
      isHalal: false,
      calories: 350,
      portion: 1,
      ingredients: "Beef, cheddar cheese, lettuce, tomato, sesame bun, burger sauce",
      allergens: "Gluten, Dairy, Soy",
    ),
    Food(
      name: "Vegetarian Sushi Platter",
      description:
          "A colorful array of sushi rolls filled with fresh vegetables, avocado, and cucumber, served with soy sauce and pickled ginger.",
      imageUrl: "assets/images/vegetarian_sushi_platter.jpg",
      price: 80000,
      spicyLevel: 1,
      isHalal: true,
      calories: 200,
      portion: 10,
      ingredients: "Rice, seaweed, avocado, cucumber, soy sauce, pickled ginger",
      allergens: "Gluten, Soy",
    ),
    Food(
      name: "Thai Green Curry",
      description:
          "Rich and creamy green curry made with coconut milk, green chilies, and tender chicken pieces, served with steamed jasmine rice.",
      imageUrl: "assets/images/thai_green_curry.jpg",
      price: 65000,
      spicyLevel: 4,
      isHalal: true,
      calories: 400,
      portion: 2,
      ingredients: "Coconut milk, green chilies, chicken, eggplant, jasmine rice",
      allergens: "None",
    ),
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, gooey chocolate cake with a molten chocolate center, served with a scoop of vanilla ice cream.",
      imageUrl: "assets/images/chocolate_lava_cake.jpg",
      price: 45000,
      spicyLevel: 0,
      isHalal: true,
      calories: 350,
      portion: 1,
      ingredients: "Flour, cocoa powder, sugar, eggs, butter, vanilla ice cream",
      allergens: "Gluten, Dairy, Eggs",
    ),
    Food(
      name: "Chicken Tikka Masala",
      description:
          "Tender chicken pieces marinated in spices and yogurt, cooked in a creamy tomato-based curry sauce, served with naan bread.",
      imageUrl: "assets/images/chicken_tikka_masala.jpg",
      price: 70000,
      spicyLevel: 3,
      isHalal: true,
      calories: 450,
      portion: 2,
      ingredients: "Chicken, yogurt, tomato, cream, naan bread, spices",
      allergens: "Gluten, Dairy",
    ),
    Food(
      name: "Grilled Salmon Salad",
      description:
          "Fresh grilled salmon served on a bed of mixed greens, cherry tomatoes, cucumbers, and a tangy lemon vinaigrette.",
      imageUrl: "assets/images/grilled_salmon_salad.jpg",
      price: 85000,
      spicyLevel: 0,
      isHalal: true,
      calories: 300,
      portion: 1,
      ingredients: "Salmon, mixed greens, cherry tomatoes, cucumber, lemon vinaigrette",
      allergens: "Fish",
    ),
    Food(
      name: "Hot and Sour Soup",
      description:
          "A tangy and spicy soup with tofu, mushrooms, bamboo shoots, and egg ribbons, flavored with soy sauce and vinegar.",
      imageUrl: "assets/images/hot_and_sour_soup.jpg",
      price: 35000,
      spicyLevel: 2,
      isHalal: true,
      calories: 150,
      portion: 1,
      ingredients: "Tofu, mushrooms, bamboo shoots, egg, soy sauce, vinegar",
      allergens: "Gluten, Eggs, Soy",
    ),
    Food(
      name: "Beef Rendang",
      description:
          "Traditional Indonesian slow-cooked beef curry with rich spices and coconut milk, served with steamed rice.",
      imageUrl: "assets/images/rendang.jpg",
      price: 75000,
      spicyLevel: 4,
      isHalal: true,
      calories: 500,
      portion: 1,
      ingredients: "Beef, coconut milk, spices, rice",
      allergens: "None",
    ),
    Food(
      name: "Matcha Cheesecake",
      description:
          "Creamy Japanese-style cheesecake infused with matcha green tea, served with whipped cream and a drizzle of honey.",
      imageUrl: "assets/images/matcha_cheesecake.jpg",
      price: 60000,
      spicyLevel: 0,
      isHalal: true,
      calories: 300,
      portion: 1,
      ingredients: "Cream cheese, matcha, sugar, eggs, whipped cream, honey",
      allergens: "Dairy, Eggs",
    ),
  ];

  void showTopBanner(BuildContext context, String message, {required Color backgroundColor, required Color textColor}) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 50,
        left: MediaQuery.of(context).size.width * 0.18,
        right: MediaQuery.of(context).size.width * 0.18,
        child: Material(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    message,
                    style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Icon(Icons.check_circle, color: textColor),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }

  @override
  void initState() {
    super.initState();
    for (var food in foods) {
      _swipeItems.add(
        SwipeItem(
          content: food,
          likeAction: () {
            showTopBanner(context, "You liked ${food.name}!", backgroundColor: AppColors.green, textColor: const Color.fromARGB(255, 22, 98, 41));
          },
          nopeAction: () {
            showTopBanner(context, "You disliked ${food.name}.", backgroundColor: const Color.fromARGB(255, 255, 200, 200), textColor:  AppColors.red);
          },
        ),
      );
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SwipeCards(
              matchEngine: _matchEngine,
              itemBuilder: (BuildContext context, int index) {
                final food = _swipeItems[index].content as Food;
                return SwipeCardWidget(
                  food: food,
                  onLovePressed: () {
                    _matchEngine.currentItem?.like();
                    showTopBanner(context, "You liked ${food.name}!",
                        backgroundColor: AppColors.green,
                        textColor: const Color.fromARGB(255, 22, 98, 41));
                  },
                  onNopePressed: () {
                    _matchEngine.currentItem?.nope();
                    showTopBanner(context, "You disliked ${food.name}.",
                        backgroundColor: const Color.fromARGB(255, 255, 200, 200),
                        textColor: AppColors.red);
                  },
                );
              },
              onStackFinished: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("You've gone through all the foods!")),
                );
              },
              upSwipeAllowed: true,
              fillSpace: true,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingButtonWidget(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  iconPath: 'assets/icons/back_icon.png',
                ),
                FloatingButtonWidget(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  iconPath: 'assets/icons/ai_icon.png',
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
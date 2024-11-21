import 'package:diswipe/dummy/dummy_data.dart';
import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/pages/recommendation_page.dart';
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
  
  final Set<String> _likedFoodNames = {};
  final List<Food> _likedFoods = [];

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
                    style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w500),
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

  void _likeFood(Food food) {
    _likedFoodNames.add(food.name);
    _likedFoods.add(food);

    showTopBanner(
      context,
      "You liked ${food.name}!",
      backgroundColor: AppColors.green,
      textColor: const Color.fromARGB(255, 22, 98, 41),
    );
  }

  void _dislikeFood(Food food) {
    showTopBanner(
      context,
      "You disliked ${food.name}.",
      backgroundColor: const Color.fromARGB(255, 255, 200, 200),
      textColor: AppColors.red,
    );
  }

  @override
  void initState() {
    super.initState();
    for (var food in dummyFoods) {
      _swipeItems.add(
        SwipeItem(
          content: food,
          likeAction: () => _likeFood(food),
          nopeAction: () => _dislikeFood(food),
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
                  },
                  onNopePressed: () {
                    _matchEngine.currentItem?.nope();
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
                    final recommendedRestaurants = dummyRestaurants.where((restaurant) {
                      return restaurant.foods.any((food) => _likedFoodNames.contains(food.name));
                    }).toList();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecommendationPage(
                          likedFoodNames: _likedFoodNames,
                          likedFoods: _likedFoods,
                          similarRestaurants: recommendedRestaurants,
                        ),
                      ),
                    );
                  },
                  iconPath: 'assets/icons/ai_icon.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
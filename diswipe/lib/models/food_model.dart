class Food{
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  final int spicyLevel;
  final bool isHalal;
  final int calories;
  final int portion;
  final String ingredients;
  final String allergens;

  Food({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.spicyLevel,
    required this.isHalal,
    required this.calories,
    required this.portion,
    required this.ingredients,
    required this.allergens,
  });
}
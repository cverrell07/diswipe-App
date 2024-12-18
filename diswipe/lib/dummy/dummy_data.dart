import 'package:diswipe/models/food_model.dart';
import 'package:diswipe/models/restaurant_model.dart';

final List<Food> dummyFoods = [
  Food(
    name: 'Nasi Goreng',
    description: 'Fried rice with a delicious savory flavor, perfect for a quick meal.',
    price: 22000,
    imageUrl: 'assets/images/nasi_goreng.jpg',
    spicyLevel: 0,
    isHalal: true,
    calories: 350,
    portion: 1,
    ingredients: 'Rice, soy sauce, garlic, onions, egg',
    allergens: 'Gluten',
  ),
  Food(
    name: 'Nasi Goreng Seafood',
    description: 'Fried rice with a mix of fresh seafood, including shrimp and squid.',
    price: 35000,
    imageUrl: 'assets/images/nasi_goreng_seafood.jpg',
    spicyLevel: 1,
    isHalal: true,
    calories: 400,
    portion: 1,
    ingredients: 'Rice, seafood, soy sauce, garlic, onions, egg',
    allergens: 'Shellfish, gluten',
  ),
  Food(
    name: 'Nasi Goreng Vegetarian',
    description: 'A vegetarian version of fried rice, loaded with fresh veggies.',
    price: 27000,
    imageUrl: 'assets/images/nasi_goreng_vegetarian.jpg',
    spicyLevel: 0,
    isHalal: true,
    calories: 300,
    portion: 1,
    ingredients: 'Rice, vegetables, soy sauce, garlic, onions, egg',
    allergens: 'Gluten',
  ),
  Food(
    name: 'Mie Goreng',
    description: 'Fried noodles with a savory flavor, served with a crispy topping.',
    price: 24000,
    imageUrl: 'assets/images/mie_goreng.jpg',
    spicyLevel: 0,
    isHalal: true,
    calories: 380,
    portion: 1,
    ingredients: 'Noodles, soy sauce, garlic, onions, egg',
    allergens: 'Gluten',
  ),
  Food(
    name: 'Mie Goreng Seafood',
    description: 'Fried noodles with seafood, including shrimp and calamari.',
    price: 38000,
    imageUrl: 'assets/images/mie_goreng_seafood.jpg',
    spicyLevel: 1,
    isHalal: true,
    calories: 450,
    portion: 1,
    ingredients: 'Noodles, seafood, soy sauce, garlic, onions, egg',
    allergens: 'Shellfish, gluten',
  ),
  Food(
    name: 'Mie Goreng Vegetarian',
    description: 'Vegetarian fried noodles with a variety of fresh vegetables.',
    price: 29000,
    imageUrl: 'assets/images/mie_goreng_vegetarian.jpg',
    spicyLevel: 0,
    isHalal: true,
    calories: 350,
    portion: 1,
    ingredients: 'Noodles, vegetables, soy sauce, garlic, onions, egg',
    allergens: 'Gluten',
  ),
  
  Food(
    name: 'Ayam Geprek Level 5',
    description: 'Ayam geprek pedas dengan level 5 untuk pencinta makanan pedas.',
    price: 25000,
    imageUrl: 'assets/images/ayam_geprek.jpg',
    spicyLevel: 5,
    isHalal: true,
    calories: 300,
    portion: 1,
    ingredients: 'Ayam, Tepung, Sambal, Rempah',
    allergens: 'Tepung terigu, cabai',
  ),
  Food(
    name: 'Paket Geprek Spesial',
    description: 'Paket spesial ayam geprek dengan nasi, sambal, dan tambahan kerupuk.',
    price: 30000,
    imageUrl: 'assets/images/paket_geprek.jpg',
    spicyLevel: 3,
    isHalal: true,
    calories: 500,
    portion: 1,
    ingredients: 'Ayam, Nasi, Kerupuk, Sambal',
    allergens: 'Tepung terigu, cabai',
  ),
  Food(
    name: 'Truffle Chicken Rice',
    description: 'Nasi dengan ayam berlapis saus truffle khas yang lezat.',
    price: 45000,
    imageUrl: 'assets/images/truffle_chicken_rice.jpg',
    spicyLevel: 0,
    isHalal: true,
    calories: 600,
    portion: 1,
    ingredients: 'Ayam, Nasi, Saus Truffle',
    allergens: 'Susu, Gluten',
  ),
  Food(
    name: 'Spicy Wonton',
    description: 'Delicious, handcrafted dumplings filled with savory minced pork and fresh vegetables, wrapped in a soft dough and tossed in a special spicy chili oil.',
    price: 40000,
    imageUrl: 'assets/images/spicy_wonton.jpg',
    spicyLevel: 3,
    isHalal: true,
    calories: 220,
    portion: 5,
    ingredients: 'Wheat flour, minced pork, chili oil, green onion, ginger, garlic',
    allergens: 'Gluten, Soy, Sesame oil',
  ),
  Food(
    name: "Classic Cheeseburger",
    description: "Juicy beef patty topped with melted cheddar cheese, crisp lettuce, tomato, and a tangy burger sauce, served in a freshly baked sesame bun.",
    price: 50000,
    imageUrl: "assets/images/classic_cheeseburger.jpg",
    spicyLevel: 0,
    isHalal: false,
    calories: 350,
    portion: 1,
    ingredients: "Beef, cheddar cheese, lettuce, tomato, sesame bun, burger sauce",
    allergens: "Gluten, Dairy, Soy",
  ),
  
  Food(
    name: "Salad Mix",
    description: "A fresh mix of vegetables like lettuce, cucumbers, and tomatoes, perfect for a light meal.",
    price: 20000,
    imageUrl: "assets/images/salad_mix.jpg",
    spicyLevel: 0,
    isHalal: true,
    calories: 150,
    portion: 1,
    ingredients: "Lettuce, cucumber, tomato, olive oil, balsamic vinegar",
    allergens: "None",
  ),
  Food(
    name: "Steamed Rice",
    description: "Simple steamed rice, a perfect side dish for any meal.",
    price: 10000,
    imageUrl: "assets/images/steamed_rice.jpg",
    spicyLevel: 0,
    isHalal: true,
    calories: 250,
    portion: 1,
    ingredients: "Rice",
    allergens: "None",
  ),
  Food(
    name: "Sushi Rolls",
    description: "Fresh sushi rolls with fish and vegetables, rolled in seaweed and rice.",
    price: 60000,
    imageUrl: "assets/images/sushi_rolls.jpg",
    spicyLevel: 1,
    isHalal: true,
    calories: 180,
    portion: 6,
    ingredients: "Rice, seaweed, fish, cucumber, avocado",
    allergens: "Gluten, Fish",
  ),
];

final List<Restaurant> dummyRestaurants = [
  Restaurant(
    name: 'Ayam Geprek Gold Chick, Binus',
    imageUrl: 'assets/images/ayam_geprek_gold_chick_coverImage.jpg',
    location: 'Jl. Kembang Kerep No.15, Kemanggisan, Jakarta Barat',
    distance: 0.13,
    rating: 4.9,
    category: 'Might be Your Favorites',
    minDeliveryTime: 15,
    maxDeliveryTime: 25,
    review: 120,
    foods: [dummyFoods[6], dummyFoods[7]],
  ),
  Restaurant(
    name: 'Truffle Belly, Binus',
    imageUrl: 'assets/images/truffleBelly_coverImage.png',
    location: 'Jl. Anggrek Rosliana No.8, Kemanggisan, Jakarta Barat',
    distance: 0.29,
    rating: 4.7,
    category: 'Might be Your Favorites',
    minDeliveryTime: 20,
    maxDeliveryTime: 30,
    review: 85,
    foods: [dummyFoods[8], dummyFoods[9]],
  ),
  Restaurant(
    name: 'Seafood Plaza, Binus',
    imageUrl: 'assets/images/seafood_plaza_coverImage.jpg',
    location: 'Jl. Raya Mangga No.6, Kemanggisan, Jakarta Barat',
    distance: 0.35,
    rating: 4.8,
    category: 'Seafood Lovers',
    minDeliveryTime: 25,
    maxDeliveryTime: 35,
    review: 100,
    foods: [dummyFoods[1], dummyFoods[3], dummyFoods[4], dummyFoods[5], dummyFoods[11]],
  ),
  Restaurant(
    name: 'Nasi Goreng Mania, Kemanggisan',
    imageUrl: 'assets/images/nasi_goreng_mania_coverImage.jpg',
    location: 'Jl. Kembang Citra No.3, Kemanggisan, Jakarta Barat',
    distance: 0.45,
    rating: 4.5,
    category: 'Fried Rice Lovers',
    minDeliveryTime: 20,
    maxDeliveryTime: 30,
    review: 150,
    foods: [
      Food(
        name: 'Nasi Goreng Seafood',
        description: 'Nasi goreng dengan topping seafood segar dan bumbu khas.',
        price: 35000,
        imageUrl: 'assets/images/nasi_goreng_seafood.jpg',
        spicyLevel: 3,
        isHalal: true,
        calories: 400,
        portion: 1,
        ingredients: 'Nasi, Udang, Cumi, Bumbu Nasi Goreng',
        allergens: 'Gluten, Seafood',
      ),
      Food(
        name: 'Nasi Goreng Vegetarian',
        description: 'Nasi goreng dengan sayuran segar dan bumbu rempah pilihan.',
        price: 28000,
        imageUrl: 'assets/images/nasi_goreng_vegetarian.jpg',
        spicyLevel: 1,
        isHalal: true,
        calories: 350,
        portion: 1,
        ingredients: 'Nasi, Wortel, Kacang Polong, Bumbu Nasi Goreng',
        allergens: 'Gluten',
      ),
      Food(
        name: 'Nasi Goreng Original',
        description: 'Nasi goreng tradisional tanpa topping khusus, lezat dan sederhana.',
        price: 25000,
        imageUrl: 'assets/images/nasi_goreng.jpg',
        spicyLevel: 2,
        isHalal: true,
        calories: 380,
        portion: 1,
        ingredients: 'Nasi, Bumbu Nasi Goreng',
        allergens: 'Gluten',
      ),
    ],
  ),
  Restaurant(
    name: 'Sushi House, Kemanggisan',
    imageUrl: 'assets/images/sushi_house_coverImage.jpg',
    location: 'Jl. Mangga Citra No.7, Kemanggisan, Jakarta Barat',
    distance: 0.6,
    rating: 4.6,
    category: 'Sushi and Rolls',
    minDeliveryTime: 30,
    maxDeliveryTime: 40,
    review: 200,
    foods: [
      Food(
        name: 'Salmon Sushi',
        description: 'Sushi dengan potongan ikan salmon segar dan nasi vinegary.',
        price: 50000,
        imageUrl: 'assets/images/salmon_sushi.jpg',
        spicyLevel: 0,
        isHalal: true,
        calories: 200,
        portion: 5,
        ingredients: 'Salmon, Nasi, Seaweed',
        allergens: 'Gluten, Fish',
      ),
      Food(
        name: 'California Roll',
        description: 'Roll sushi dengan isian kepiting, alpukat, dan timun.',
        price: 45000,
        imageUrl: 'assets/images/california_roll.jpg',
        spicyLevel: 1,
        isHalal: true,
        calories: 250,
        portion: 8,
        ingredients: 'Kepiting, Alpukat, Timun, Nasi, Seaweed',
        allergens: 'Gluten, Fish',
      ),
      Food(
        name: 'Vegetarian Sushi',
        description: 'Sushi dengan isian sayuran segar seperti alpukat dan timun.',
        price: 35000,
        imageUrl: 'assets/images/vegetarian_sushi.jpg',
        spicyLevel: 1,
        isHalal: true,
        calories: 180,
        portion: 6,
        ingredients: 'Timun, Alpukat, Nasi, Seaweed',
        allergens: 'Gluten',
      ),
    ],
  ),
  Restaurant(
    name: 'Burger Haven, Kemanggisan',
    imageUrl: 'assets/images/burger_haven_coverImage.jpg',
    location: 'Jl. Raya Biru No.5, Kemanggisan, Jakarta Barat',
    distance: 0.8,
    rating: 4.4,
    category: 'Burger Lovers',
    minDeliveryTime: 15,
    maxDeliveryTime: 25,
    review: 130,
    foods: [
      Food(
        name: 'Classic Cheeseburger',
        description: 'Juicy beef patty topped with melted cheddar cheese and served in a sesame bun.',
        price: 45000,
        imageUrl: 'assets/images/classic_cheeseburger.jpg',
        spicyLevel: 0,
        isHalal: false,
        calories: 350,
        portion: 1,
        ingredients: 'Beef, Cheddar Cheese, Lettuce, Tomato, Sesame Bun',
        allergens: 'Gluten, Dairy',
      ),
      Food(
        name: 'Veggie Burger',
        description: 'A hearty veggie patty with lettuce, tomato, and a savory vegan sauce.',
        price: 40000,
        imageUrl: 'assets/images/veggie_burger.jpg',
        spicyLevel: 0,
        isHalal: true,
        calories: 300,
        portion: 1,
        ingredients: 'Vegetable Patty, Lettuce, Tomato, Vegan Sauce',
        allergens: 'Gluten, Soy',
      ),
      Food(
        name: 'Spicy Chicken Burger',
        description: 'Grilled chicken patty with spicy sauce, jalapeños, and fresh veggies.',
        price: 50000,
        imageUrl: 'assets/images/spicy_chicken_burger.jpg',
        spicyLevel: 3,
        isHalal: true,
        calories: 400,
        portion: 1,
        ingredients: 'Chicken Patty, Jalapeños, Lettuce, Tomato, Bun',
        allergens: 'Gluten, Dairy',
      ),
    ],
  ),
];
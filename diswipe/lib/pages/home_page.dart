import 'package:diswipe/dummy/dummy_data.dart';
import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/filter_card_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/home_section_widget.dart';
import '../widgets/navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onNavBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: AppColors.mainOrange,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: AppColors.mainOrange,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Jl. Raya Kb. Jeruk No.27, RT.1/RW.9, Kemanggisan, Kec. Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530',
                              style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/promotion_banner.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilterCard(label: 'Rice', icon: Icons.rice_bowl),
                    SizedBox(width: 5.0),
                    FilterCard(label: 'Salad', icon: Icons.eco),
                    SizedBox(width: 5.0),
                    FilterCard(label: 'Drinks', icon: Icons.local_drink),
                    SizedBox(width: 5.0),
                    FilterCard(label: 'More', icon: Icons.more_horiz),
                  ],
                ),
                const SizedBox(height: 40.0),
                HomeSectionWidget(
                  title: 'Might be Your Favorites',
                  restaurants: dummyRestaurants.where((r) => r.category == 'Might be Your Favorites').toList(),
                ),
                const SizedBox(height: 20.0),
                HomeSectionWidget(
                  title: 'Top Rated Restaurants',
                  restaurants: List.from(dummyRestaurants)..sort((a, b) => b.rating.compareTo(a.rating)),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: _onNavBarItemTapped,
      ),
    );
  }
}
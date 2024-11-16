import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/navigation_item_widget.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80, 
          decoration: BoxDecoration(
            color: Colors.white, 
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
            child: Row(
              children: [
                NavigationItem(icon: Icons.home, index: 0, currentIndex: currentIndex, onTap: onTap),
                const SizedBox(width: 30,),
                NavigationItem(icon: Icons.search, index: 1, currentIndex: currentIndex, onTap: onTap),
                const SizedBox(width: 100,),
                NavigationItem(icon: Icons.access_time, index: 2, currentIndex: currentIndex, onTap: onTap),
                const SizedBox(width: 24,),
                NavigationItem(icon: Icons.person, index: 3, currentIndex: currentIndex, onTap: onTap),
              ],
            ),
          ),
        ),
        Positioned(
          top: -35,
          left: MediaQuery.of(context).size.width / 2 - 30,
          child: Transform.rotate(
            angle: 45 * 3.141592653589793 / 180,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainOrange.withOpacity(0.8),
                    const Color.fromARGB(255, 247, 179, 150).withOpacity(0.9),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.centerLeft,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainOrange.withOpacity(0.7),
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Transform.rotate(
                angle: -45 * 3.141592653589793 / 180,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.layers,
                    color: AppColors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
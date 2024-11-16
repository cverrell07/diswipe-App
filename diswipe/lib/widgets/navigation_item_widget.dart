import 'package:flutter/material.dart';
import 'package:diswipe/styles/style.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final int index;
  final int currentIndex;
  final Function(int) onTap;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onTap(index), 
      icon: Icon(
        icon,
        size: 40,
        color: currentIndex == index ? AppColors.black : AppColors.gray.withOpacity(0.3),
      ),
    );
  }
}
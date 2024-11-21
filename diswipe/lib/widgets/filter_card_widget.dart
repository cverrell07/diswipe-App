import 'package:flutter/material.dart';
import 'package:diswipe/styles/style.dart';

class FilterCard extends StatelessWidget {
  final String label;
  final IconData icon;

  const FilterCard({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Icon(icon, color: AppColors.mainOrange, size: 30),
          const SizedBox(height: 5.0),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.mainOrange,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
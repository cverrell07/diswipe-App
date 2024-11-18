import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class RestaurantInfoWidget extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const RestaurantInfoWidget({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        Row(
          children: [
            Icon(icon, color: AppColors.mainOrange),
            const SizedBox(width: 5.0),
            Text(value, style: const TextStyle(fontSize: 16.0, color: AppColors.mainOrange ,fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 2.0),
        Text(label, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }
}
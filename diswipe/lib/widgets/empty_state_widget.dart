import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/empty_state_image.png', 
              width: 250,
              height: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'Whoops',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainOrange, 
                ),
                children: [
                  TextSpan(
                    text: ', looks like your recommendation is taking a nap!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black, 
                    ),
                  ),
                ],
              ),
          ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(370, 44),
                backgroundColor: AppColors.mainOrange,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
              child: const Text('Start swiping!', style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      ),
    );
  }
}
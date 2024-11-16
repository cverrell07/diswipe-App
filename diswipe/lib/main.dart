import 'package:diswipe/pages/sign_in_page.dart';
import 'package:diswipe/pages/splashscreen_page.dart';
import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'diswipe',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.mainOrange
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signin': (context) => const SignInPage(),
      },
    );
  }
}
import 'package:diswipe/widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Homepage Preview'),
      ),
      body: Center(
        child: Text('Current Index: $_currentIndex'),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: _onNavBarItemTapped,
      ),
    );
  }
}
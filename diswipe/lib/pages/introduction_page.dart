import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "Swipe. Choose. Delivered",
      "description":
          "You can browse through delicious food choices with a simple swipe. It's like choosing your next favorite dish as easily as finding a match!",
      "image": "assets/icons/delivery_icon.svg",
    },
    {
      "title": "Swipe Right for YUM!",
      "description":
          "Love what you see? Swipe right to add mouthwatering dishes to your favorites list. Every swipe brings you closer to your meal.",
      "image": "assets/icons/swipeRight_icon.svg",
    },
    {
      "title": "Swipe Left to Explore More...",
      "description":
          "Not quite what you're craving? Swipe left to skip and discover more tasty options. We’ll keep showing you new dishes until you find the perfect match.",
      "image": "assets/icons/swipeLeft_icon.svg",
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/diswipe_textLogo.svg',
                  width: AppSpacing.xLarge,
                  height: AppSpacing.xLarge,
                ),
                SizedBox(
                  height: 400,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: _pages.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _pages[index]["title"]!,
                            style: const TextStyle(
                              fontSize: AppFontSize.xLarge,
                              fontWeight: AppFontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.small),
                          Text(
                            _pages[index]["description"]!,
                            style: const TextStyle(
                              fontSize: AppFontSize.small,
                              color: AppColors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.large),
                          SvgPicture.asset(
                            _pages[index]["image"]!,
                            height: 200,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: AppSpacing.medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.small / 2),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index
                            ? AppColors.mainOrange
                            : AppColors.gray,
                      ),
                    );
                  }),
                ),
                const SizedBox(height: AppSpacing.large),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColors.mainOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.small,
                      horizontal: 120.0,
                    ),
                  ),
                  child: const Text(
                    "Get Started!",
                    style: TextStyle(
                      fontSize: AppFontSize.large,
                      color: AppColors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/signin');
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: AppColors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign me in!',
                          style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            color: AppColors.mainOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

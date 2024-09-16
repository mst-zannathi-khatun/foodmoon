import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../widgets/foodimagecard_widget.dart';

class HomeScreenPromotionalSlides extends StatefulWidget {
  const HomeScreenPromotionalSlides({super.key});
  @override
  State<HomeScreenPromotionalSlides> createState() => _HomeScreenPromotionalSlidesState();
}

class _HomeScreenPromotionalSlidesState extends State<HomeScreenPromotionalSlides> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Timer to automatically change the page every 4 seconds
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 1) { // Adjust the condition based on the number of slides
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: PageView(
              controller: _pageController,
              children: [
                FoodImageCardWidget(
                  imagePath: "assets/images/food.jpeg",
                  height: 140,
                  width: double.infinity,
                  shadowColor: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                  labelText: "Ad",
                ),
                FoodImageCardWidget(
                  imagePath: "assets/images/food.jpeg",
                  height: 140,
                  width: double.infinity,
                  shadowColor: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                  labelText: "Ad",
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(2, (index){
                  bool swapPosition = _currentPage % 2==1;
                  return Row(
                    children: [
                      if(swapPosition == (index == 0))
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 20,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: _currentPage == index ? AppColors.pinkShadow : Colors.grey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      )
                      else
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 11,
                        height: 11,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index ? AppColors.pinkShadow : Colors.grey,
                        ),
                      ),
                    ],
                  );
                })
            ),
          ),
        ],
      ),
    );
  }
}

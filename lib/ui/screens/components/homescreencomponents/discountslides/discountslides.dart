import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/foodimagecard_widget.dart';

class DiscountSlides extends StatefulWidget {
  const DiscountSlides({super.key});

  @override
  State<DiscountSlides> createState() => _DiscountSlidesState();
}

class _DiscountSlidesState extends State<DiscountSlides> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Set up a timer to change pages every 5 seconds
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                _buildSlide("assets/images/food.jpeg"),
                _buildSlide("assets/images/food.jpeg"),
                _buildSlide("assets/images/food.jpeg"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  height: 11,
                  width: 11,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? AppColors.pinkShadow
                        : Colors.grey, // Active = pink, Inactive = gray
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide(String imagePath) {
    return Stack(
      children: [
        FoodImageCardWidget(
          imagePath: imagePath,
          height: 150,
          width: double.infinity,
          shadowColor: Colors.black.withOpacity(0.2),
          blurRadius: 8,
          offset: const Offset(4, 4),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Save big on your",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, height: 1),
              ),
              const Text(
                "first grocery order",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, height: 1),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop now",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.pinkShadow,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: AppColors.pinkShadow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

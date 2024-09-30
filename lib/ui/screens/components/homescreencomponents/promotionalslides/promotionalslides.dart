import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../widgets/foodimagecard_widget.dart';
import 'circularrectangle.dart';
import 'indicatorrectangle.dart';

class PromotionalSlides extends StatefulWidget {
  const PromotionalSlides({super.key});
  @override
  State<PromotionalSlides> createState() => _PromotionalSlidesState();
}

class _PromotionalSlidesState extends State<PromotionalSlides> {
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
    return  Column(
      children: [
        SizedBox(
          height: 170,
          child: PageView(
            controller: _pageController,
            children: [
              FoodImageCardWidget(
                imagePath: "assets/images/food.jpeg",
                height: 170,
                width: double.infinity,
                shadowColor: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(4, 4),
                labelText: "Ad",
              ),
              FoodImageCardWidget(
                imagePath: "assets/images/world1.jpg",
                height: 170,
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
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index){
                bool swapPosition = _currentPage % 2==1;
                return Row(
                  children: [
                    if(swapPosition == (index == 0))
                      indicatorRectangle(index: index, currentPage: _currentPage)
                    else
                      circularIndicator(index: index, currentPage: _currentPage),
                  ],
                );
              })
          ),
        ),
      ],
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';
// import '../../../../../core/constants/app_colors.dart';
// import 'discountslidebuilder.dart';
//
// class DiscountSlidesWidget extends StatefulWidget {
//   const DiscountSlidesWidget({super.key});
//
//   @override
//   State<DiscountSlidesWidget> createState() => _DiscountSlidesWidgetState();
// }
//
// class _DiscountSlidesWidgetState extends State<DiscountSlidesWidget> {
//   late PageController _pageController;
//   int _currentPage = 0;
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: 0);
//
//     // Set up a timer to change pages every 5 seconds
//     _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
//       if (mounted) { // Check if the widget is still mounted
//         if (_currentPage < 2) {
//           _currentPage++;
//         } else {
//           _currentPage = 0;
//         }
//
//         _pageController.animateToPage(
//           _currentPage,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer.cancel();
//     _pageController.dispose(); // Dispose of the PageController
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 150,
//           child: PageView(
//             controller: _pageController,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             children: const [
//               DiscountSlideBuilder(imagePath: "assets/images/food.jpeg"),
//               DiscountSlideBuilder(imagePath: "assets/images/food.jpeg"),
//               DiscountSlideBuilder(imagePath: "assets/images/food.jpeg"),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.zero,
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(3, (index) {
//               return Container(
//                 height: 11,
//                 width: 11,
//                 margin: const EdgeInsets.symmetric(horizontal: 3),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentPage == index
//                       ? AppColors.pinkShadow // Use your defined color
//                       : Colors.grey, // Active = pink, Inactive = gray
//                 ),
//               );
//             }),
//           ),
//         ),
//       ],
//     );
//   }
// }

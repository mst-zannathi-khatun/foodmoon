// import 'package:flutter/material.dart';
// import '../../../../../core/constants/app_colors.dart';
// import '../../../../widgets/foodimagecard_widget.dart';
//
// class DiscountSlideBuilder extends StatelessWidget {
//   final String imagePath;
//
//   const DiscountSlideBuilder({required this.imagePath, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         FoodImageCardWidget(
//           imagePath: imagePath,
//           height: 150,
//           width: double.infinity,
//           shadowColor: Colors.black.withOpacity(0.2),
//           blurRadius: 8,
//           offset: const Offset(4, 4),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               const Text(
//                 "Save big on your",
//                 style: TextStyle(
//                     fontSize: 24, fontWeight: FontWeight.bold, height: 1),
//               ),
//               const Text(
//                 "first grocery order",
//                 style: TextStyle(
//                     fontSize: 24, fontWeight: FontWeight.bold, height: 1),
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Shop now",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: AppColors.pinkShadow,
//                     ),
//                   ),
//                   Icon(
//                     Icons.arrow_right_alt_rounded,
//                     color: AppColors.pinkShadow,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

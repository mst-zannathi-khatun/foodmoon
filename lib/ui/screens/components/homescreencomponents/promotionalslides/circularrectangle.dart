import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart'; // Ensure you import Material package for colors

Widget circularIndicator({
  required int index,
  required int currentPage,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 11,
    height: 11,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: currentPage == index ? AppColors.pinkShadow : Colors.grey,
    ),
  );
}

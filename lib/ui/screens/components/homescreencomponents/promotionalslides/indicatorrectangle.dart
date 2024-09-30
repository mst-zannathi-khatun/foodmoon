import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
Widget indicatorRectangle({
  required int index,
  required int currentPage,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 20,
    height: 10,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: currentPage == index ? AppColors.pinkShadow : Colors.grey,
      borderRadius: BorderRadius.circular(2),
    ),
  );
}

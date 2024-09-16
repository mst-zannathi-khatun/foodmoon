import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class FoodImageCardWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final Color shadowColor;
  final double blurRadius;
  final Offset offset;
  final String labelText; // Added for optional text

  const FoodImageCardWidget({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
    required this.shadowColor,
    required this.blurRadius,
    required this.offset,
    this.labelText = "", // Default to an empty string if no label is provided
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                offset: offset,
                blurRadius: blurRadius,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (labelText.isNotEmpty) // Only show the label if it's not empty
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              color: AppColors.pinkShadow.withOpacity(0.7),
              child: Text(
                labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

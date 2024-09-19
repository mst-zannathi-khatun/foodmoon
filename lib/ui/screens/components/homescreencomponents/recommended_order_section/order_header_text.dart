import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

Widget buildOrderHeaderText(){
  return  RichText(
    text: TextSpan(
      children: [
        WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.rotate(
            angle: 0.0,
            child: Text(
              "O",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColors.pinkShadow,
                fontFamily: "PlayfairDisplay",
              ),
            ),
          ),
        ),
        const TextSpan(
          text: "rder it again",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: "PlayfairDisplay",
          ),
        ),
      ],
    ),
  );
}
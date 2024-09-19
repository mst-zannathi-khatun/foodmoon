import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class RichTextWidget extends StatelessWidget {
  final String colorText;
  final String text;
  const RichTextWidget({super.key, required this.colorText, required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: Transform.rotate(
              angle: 0.0,
              child: Text(
                colorText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.pinkShadow,
                  fontFamily: "PlayfairDisplay",
                ),
              ),
            ),
          ),
           TextSpan(
            text: text,
            style: const TextStyle(
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
}

import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

Widget buildRatingsButton() {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: AppColors.pinkShadow),
      padding: EdgeInsets.zero,
    ),
    child: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.star,
          size: 16,
          color: Colors.amber,
        ),
        Text(
          "Ratings",
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "4.0",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 1,
        ),
        Text("+"),
        SizedBox(
          width: 4,
        ),
      ],
    ),
  );
}

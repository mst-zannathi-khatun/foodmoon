import 'package:flutter/material.dart';

import '../../../../../core/constants/app_text_style.dart';

Widget buildRestaurantDetails() {
  return SizedBox(
    width: 250,
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Al Kaderia Restaurant with a very long name that should be clipped",
            style: homeScreensRecommendedOrder,
            overflow: TextOverflow.ellipsis, // This adds the ellipsis
          ),
        ),
        const Icon(Icons.star, size: 18, color: Colors.amber),
        const SizedBox(width: 2),
        const Text(
          "4.7",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 4),
        const Text("25000 +"),
      ],
    ),
  );
}

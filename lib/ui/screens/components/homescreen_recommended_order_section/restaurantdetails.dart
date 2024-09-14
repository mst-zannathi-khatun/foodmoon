import 'package:flutter/material.dart';

Widget buildRestaurantDetails(){
  return const SizedBox(
    width: 250,
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Al Kaderia Restaurant with a very long name that should be clipped",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16),
            overflow: TextOverflow
                .ellipsis, // Clip text with ellipsis if it's too long
          ),
        ),
        Icon(Icons.star, size: 18, color: Colors.amber),
        SizedBox(width: 2),
        Text(
          "4.7",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 4),
        Text("25000 +"),
      ],
    ),
  );
}
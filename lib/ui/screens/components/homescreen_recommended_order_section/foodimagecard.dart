import 'package:flutter/material.dart';

Widget buildFoodImageCard(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      // Same radius as the image to ensure rounded corners
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          // Adjust opacity for shadow intensity
          offset: const Offset(4, 4),
          // Adjust the offset to control shadow position
          blurRadius:
          8, // Adjust the blur radius to control the shadow spread
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      // Ensure the image corners match the container's corners
      child: Image.asset(
        "assets/images/food.jpeg",
        height: 150,
        width: 250,
        fit: BoxFit.cover,
      ),
    ),
  );
}
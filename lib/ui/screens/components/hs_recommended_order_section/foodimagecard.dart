import 'package:flutter/material.dart';

import '../../../widgets/foodimagecard_widget.dart';

Widget buildFoodImageCard() {
  return FoodImageCardWidget(
    imagePath: "assets/images/food.jpeg",
    height: 150,
    width: 250,
    shadowColor: Colors.black.withOpacity(0.2),
    blurRadius: 8,
    offset: const Offset(4, 4),
  );
}

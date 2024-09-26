import 'package:flutter/material.dart';
import '../../../../widgets/richtext_widget.dart';

Widget buildFoodDeliveryCard() {
  return SizedBox(
    height: 280,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            const RichTextWidget(
              colorText: "F",
              text: "ood delivery app",
            ),
            Positioned(
                bottom: -10.0,
                right: -10.0,
                child: Image.asset("assets/images/polarCartoon.png", height: 120, width: 110, fit: BoxFit.cover,)),
          ],
        ),
      ),
    ),
  );
}

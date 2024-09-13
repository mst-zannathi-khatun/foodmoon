import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

Widget  buildFoodDeliveryCard(){
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
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment:
                        PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: Transform.rotate(
                          angle: 0.0,
                          child: Text(
                            "F",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: AppColors.pinkShadow,
                              fontFamily:
                              "PlayfairDisplay",
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                        text: "ood delivery ",
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
                ),
                const Text("Order food you love"),
                const SizedBox(height: 22),
              ],
            ),
            const Positioned(
              bottom: -10.0,
              // Adjust this value to move the image further down
              right: -10.0,
              child: Image(
                image: AssetImage(
                    "assets/images/foodpicture.png"),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';

Widget pickUpSavingCard(){
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            "P",
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
                        text: "ick-up",
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
                const SizedBox(height: 12,),
                const Text("Save upto", style: TextStyle(height: 1.0),),
                const Text("40% off", style: TextStyle(height: 1.0),),
              ],
            ),
          ),
          const Positioned(
            bottom: -10.0,
            // Adjust this value to move the image further down
            right: -10.0,
            child: Image(
              image: AssetImage(
                  "assets/images/foodpicture.png"),
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
  );
}
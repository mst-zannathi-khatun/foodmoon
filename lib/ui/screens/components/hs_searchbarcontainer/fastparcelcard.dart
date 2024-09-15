import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

Widget buildFastParcelCard(){
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
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
                          fontFamily: "PlayfairDisplay",
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(
                    text: "olargo ",
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
            const Text("Fastest", style: TextStyle(height: 1.0),),
            const Text("parcel deliv....", style: TextStyle(height: 1.0),),
          ],
        ),
      ),
    ),
  );
}
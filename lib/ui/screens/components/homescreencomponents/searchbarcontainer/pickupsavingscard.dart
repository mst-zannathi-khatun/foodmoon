import 'package:flutter/material.dart';
import '../../../../widgets/richtext_widget.dart';

Widget pickUpSavingCard(){
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichTextWidget(
                  colorText: "F",
                  text: "ick-up",
                ),
                SizedBox(height: 12,),
                Text("Save upto", style: TextStyle(height: 1.0),),
                Text("40% off", style: TextStyle(height: 1.0),),
              ],
            ),
          ),
          Positioned(
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
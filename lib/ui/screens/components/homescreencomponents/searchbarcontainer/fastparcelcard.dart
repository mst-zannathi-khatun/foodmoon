import 'package:flutter/material.dart';
import '../../../../widgets/richtext_widget.dart';

Widget buildFastParcelCard(){
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichTextWidget(colorText: 'P', text: 'olargo',),
            SizedBox(height: 12,),
            Text("Fastest", style: TextStyle(height: 1.0),),
            Text("parcel deliv....", style: TextStyle(height: 1.0),),
          ],
        ),
      ),
    ),
  );
}
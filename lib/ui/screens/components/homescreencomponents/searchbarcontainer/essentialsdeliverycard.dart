import 'package:flutter/material.dart';
import '../../../../widgets/richtext_widget.dart';
Widget buildEssentialsDeliveryCard(){
  return  SizedBox(
    height: 180,
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
            RichTextWidget(colorText: 'P', text: 'olarmart',),
            Text("Essentials delivered fast"),
          ],
        ),
      ),
    ),
  );
}

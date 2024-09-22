import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/richtext_widget.dart';

class ShopCategorySection extends StatelessWidget {
  const ShopCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RichTextWidget(
            colorText: "S",
            text: "hop by category",
          ),
         SizedBox(
           height: 120,
           child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 10,
               itemBuilder: (context, index){
             return Padding(
               padding: const EdgeInsets.only(top: 0, left: 8, right: 0, bottom: 0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Stack(
                   children: [
                     Container(
                       height: 95,
                       width: 85,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         gradient: const LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                             Color(0xFFF8BBD0),  // Light Pink (Base)
                             Color(0xFFFFE0E7),  // Lighter Pink (Highlight)
                             Color(0xFFF06292),  // Darker Pink (Shadow)
                           ],
                         ),
                       ),
                     ),
                     Positioned.fill(
                       child: Align(
                           alignment: Alignment.center,
                           child: Image.asset(
                             "assets/images/food.jpeg",
                             fit: BoxFit.cover,
                             height: 80,
                             width: 70,
                           )),
                     ),
                   ],
                 ),
                 SizedBox(
                   width: 80,
                   child: Align(
                     alignment: Alignment.center,
                     child: Stack(
                       children: [
                         // Text with black stroke
                         Text(
                           "Groceries",
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             height: 1,
                             fontSize: 15,
                             letterSpacing: 0.8,
                             foreground: Paint()
                               ..style = PaintingStyle.stroke
                               ..strokeWidth = 1
                               ..color = AppColors.pinkShadow, // Black stroke
                           ),
                         ),
                         // Main red-colored text
                         Text(
                           "Groceries",
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             height: 1,
                             fontSize: 15,
                             letterSpacing: 0.8,
                             color: Colors.black, // Main red color
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],),
             );
           }),
         )
        ],
      ),
    );
  }
}
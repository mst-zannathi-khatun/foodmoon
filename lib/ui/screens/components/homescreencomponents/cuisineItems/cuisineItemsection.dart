import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/richtext_widget.dart';

class CuisineItem extends StatelessWidget {
  const CuisineItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RichTextWidget(
            colorText: 'C',
            text: 'uisines',
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 85,
                    width: 110,
                    child: Stack(
                      children: [
                        Card(
                          color: AppColors.pinkShadow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0.50,
                          child: const SizedBox.expand(),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(90),
                              // Match the Card's topLeft
                              topRight: Radius.circular(90),
                              // Match the Card's topRight
                              bottomLeft: Radius.circular(10),
                              // Match the Card's bottomLeft
                              bottomRight: Radius.circular(
                                  10), // Match the Card's bottomRight
                            ),
                            child: Card(
                              color: Colors.deepOrange,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(90),
                                  topRight: Radius.circular(90),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/food.jpeg",
                                height: 65, // Reduced height as requested
                                width: 110, // Match the card width
                                fit: BoxFit.cover, // Ensure the image fits well
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Biryani",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.8,
                      shadows: [
                        Shadow(
                          offset: const Offset(1.0, 1.0),
                          // Horizontal and vertical shadow offset
                          blurRadius: 3.0,
                          // Shadow blur radius
                          color: Colors.black.withOpacity(
                              0.3), // Shadow color with opacity
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}

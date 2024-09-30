import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/richtext_widget.dart';
import '../../../../widgets/topshopdetailrowwidget.dart'; // Import the new widget

class TopShopsSection extends StatelessWidget {
  const TopShopsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 0, left: 8, bottom: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RichTextWidget(
            colorText: 'T',
            text: 'op shops',
          ),
          SizedBox(
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 0, right: 0, left: 8, bottom: 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 85,
                        width: 100,
                        child: Stack(
                          children: [
                            Card(
                              margin: EdgeInsets.zero,
                              color: AppColors.pinkShadow,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const SizedBox.expand(),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/food.jpeg",
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),

                      // Use the new ShopDetailRowWidget
                      ShopDetailRowWidget(
                        icon: Icons.shopping_bag_outlined,
                        text: "polarmart",
                        textSize: 14,
                        iconColor: AppColors.pinkShadow,
                      ),

                      ShopDetailRowWidget(
                        icon: Icons.location_on,
                        text: "rampura",
                        textSize: 14,
                        iconColor: AppColors.pinkLightShadow,
                      ),

                       ShopDetailRowWidget(
                        icon: Icons.timer,
                        text: "20-30 min",
                        textSize: 11,
                        iconColor: AppColors.pinkLightShadow,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

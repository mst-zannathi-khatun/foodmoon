import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../widgets/richtext_widget.dart';

class TopShopsSection extends StatelessWidget {
  const TopShopsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 0),
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
                itemBuilder: (context, index){
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
                                height: 70, // Reduced height as requested
                                fit: BoxFit.cover, // Ensure the image fits well
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.shopping_bag_outlined, size: 14, color: AppColors.pinkShadow),
                        ),
                        const SizedBox(width: 4,),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            "polarmart",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold, height: 1.0,
                              letterSpacing: 1,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.location_on, size: 14, color: AppColors.pinkLightShadow),
                        ),
                        const SizedBox(width: 4,),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            "rampura",
                            style: TextStyle(
                                fontSize: 14,
                                 height: 1.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.timer, size: 12, color: AppColors.pinkLightShadow),
                        ),
                        const SizedBox(width: 4,),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            "20-30 min",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icon_styles.dart';
import '../../../core/constants/app_text_style.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 55,
          width: MediaQuery.of(context).size.width, // Full screen width
          decoration: BoxDecoration(
            color: AppColors.pinkShadow,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SizedBox(
            height: 42,
            width: MediaQuery.of(context).size.width - 20, // Subtract padding
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for shops & restaurants",
                hintStyle: homePageSearchBarHintText,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0), // Centers the icon more effectively
                  child: AppIconStyle.search,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 10), // Centers the hint text vertically
              ),
            ),
          ),
        ),
      ],
    );
  }
}

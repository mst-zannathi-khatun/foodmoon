import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icon_styles.dart';
import '../../../core/constants/app_text_style.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pinkShadow,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: AppIconStyle.menuIcon,
          );
        },
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Road 2, Dhaka, Bangladesh",
              style: appBarPrimaryLocationStyle,
              // Ensure this is defined as a TextStyle
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Dhaka",
              style: appBarSecondaryLocationStyle,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: AppIconStyle.favoriteIcon),
        IconButton(onPressed: () {}, icon: AppIconStyle.addToCard),
      ],
    );
  }

  // Implement preferredSize required by PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

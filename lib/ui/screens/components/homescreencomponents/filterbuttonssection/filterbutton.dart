
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

Widget buildFilterButton(){
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.pinkShadow)),
    child: const Icon(Icons.filter_list),
  );
}
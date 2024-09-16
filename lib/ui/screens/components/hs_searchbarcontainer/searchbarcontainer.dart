import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/hs_searchbarcontainer/pickupsavingscard.dart';
import 'package:foodmoon/ui/screens/components/hs_searchbarcontainer/topbrandscard.dart';
import '../../../../core/constants/app_colors.dart';
import 'essentialsdeliverycard.dart';
import 'fastparcelcard.dart';
import 'fooddeliverycard.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 390,
          width: MediaQuery.of(context).size.width,
          color: AppColors.lightGrey,
        ),
        Padding(
          padding:  const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Flexible(
                flex: 5, // 60% of the space
                child: Column(
                  children: [
                    buildFoodDeliveryCard(),
                    pickUpSavingCard(),
                  ],
                ),
              ),
              Flexible(
                flex: 5, // 40% of the space
                child: Column(
                  children: [
                    buildEssentialsDeliveryCard(),
                    buildTopBrandsCard(),
                    buildFastParcelCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreencomponents/filterbuttons/ratingsbutton.dart';
import 'package:foodmoon/ui/screens/components/homescreencomponents/filterbuttons/sortbutton.dart';
import 'cuisinesbutton.dart';
import 'filterbutton.dart';
import 'offersbutton.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildFilterButton(),
            const SizedBox(
              width: 8,
            ),
            buildSortButton(),
            const SizedBox(
              width: 8,
            ),
            buildCuisinesButton(),
            const SizedBox(
              width: 8,
            ),
            buildOffersButton(),
            const SizedBox(
              width: 8,
            ),
            buildRatingsButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/hs_filterbuttonssection/ratingsbutton.dart';
import 'package:foodmoon/ui/screens/components/hs_filterbuttonssection/sortbutton.dart';
import 'cuisinesbutton.dart';
import 'filterbutton.dart';
import 'offersbutton.dart';

class FilterButtonsSection extends StatelessWidget {
  const FilterButtonsSection({
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

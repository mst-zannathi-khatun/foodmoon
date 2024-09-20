import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreen_appbar.dart';
import 'components/homescreen_drawer.dart';
import 'components/homescreen_search_bar.dart';
import 'components/homescreencomponents/cuisineItemsection/cuisineItemsection.dart';
import 'components/homescreencomponents/filterbuttonssection/filterbuttonssection.dart';
import 'components/homescreencomponents/promotionalslides/homescreenpromotionalslides.dart';
import 'components/homescreencomponents/recommended_order_section/recommended_order.dart';
import 'components/homescreencomponents/searchbarcontainer/searchbarcontainer.dart';
import 'components/homescreencomponents/topshopssection/topshopssection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppBar(),
      drawer: HomeScreenDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Bar Section
            HomeScreenSearchBar(),
            /// Container Search Bar Section
            SearchBarContainer(),
            /// FilterButtonsSections
            SizedBox(
              height: 16,
            ),
            FilterButtonsSection(),
            SizedBox(
              height: 16,
            ),
            /// Oder it again sections
            HomeScreenRecommendedOrder(),
            SizedBox(
              height: 16,
            ),
            HomeScreenPromotionalSlides(),
            //// Cuisine Item Section
            CuisineItemSection(),
            /// Top Shops Sections
            TopShopsSection(),
          ],
        ),
      ),
    );
  }
}


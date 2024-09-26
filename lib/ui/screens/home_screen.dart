import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreen_appbar.dart';
import 'components/homescreen_drawer.dart';
import 'components/homescreen_search_bar.dart';
import 'components/homescreencomponents/cuisineItems/cuisineItemsection.dart';
import 'components/homescreencomponents/discountslides/discountslides.dart';
import 'components/homescreencomponents/filterbuttons/filterbuttons.dart';
import 'components/homescreencomponents/promotionalslides/promotionalslides.dart';
import 'components/homescreencomponents/recommended_orders/recommended_order.dart';
import 'components/homescreencomponents/searchbarcontainer/searchbarcontainer.dart';
import 'components/homescreencomponents/shopcategory/shopcategory.dart';
import 'components/homescreencomponents/topshops/topshops.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            FilterButtons(),
            SizedBox(
              height: 16,
            ),
            /// Oder it again sections
            HomeScreenRecommendedOrder(),
            SizedBox(
              height: 16,
            ),
            PromotionalSlides(),
            //// Cuisine Item Section
            CuisineItem(),
            /// Top Shops Sections
            TopShopsSection(),
            DiscountSlides(),
            ShopCategorySection(),

          ],
        ),
      ),
    );
  }
}


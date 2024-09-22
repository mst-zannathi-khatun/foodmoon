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
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      drawer: const HomeScreenDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Bar Section
            const HomeScreenSearchBar(),

            /// Container Search Bar Section
            const SearchBarContainer(),

            /// FilterButtonsSections
            const SizedBox(
              height: 16,
            ),
            FilterButtons(),
            const SizedBox(
              height: 16,
            ),

            /// Oder it again sections
            const HomeScreenRecommendedOrder(),
            const SizedBox(
              height: 16,
            ),
            const PromotionalSlides(),
            //// Cuisine Item Section
            CuisineItem(),

            /// Top Shops Sections
            const TopShopsSection(),

            /// shop by category
            const ShopCategorySection(),
            DiscountSlides(),
          ],
        ),
      ),
    );
  }
}


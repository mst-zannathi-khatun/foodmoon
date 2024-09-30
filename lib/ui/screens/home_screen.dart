import 'package:flutter/material.dart';
import 'components/homescreen_appbar.dart';
import 'components/homescreen_drawer.dart';
import 'components/homescreen_search_bar.dart';
import 'components/homescreencomponents/cuisineItems/cuisineItemsection.dart';
import 'components/homescreencomponents/discountslides/discountslides.dart';
import 'components/homescreencomponents/filterbuttons/filterbuttons.dart';
import 'components/homescreencomponents/offertags/offertagssection.dart';
import 'components/homescreencomponents/promotionalslides/promotionalslides.dart';
import 'components/homescreencomponents/recommended_orders/recommended_order.dart';
import 'components/homescreencomponents/restaurantcard/restaurantcard.dart';
import 'components/homescreencomponents/searchbarcontainer/searchbarcontainer.dart';
import 'components/homescreencomponents/shopcategory/shopcategory.dart';
import 'components/homescreencomponents/topshops/topshops.dart';

class DiagonalBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    // Draw the white background
    paint.color = Colors.white;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    // Draw the yellow diagonal section
    paint.color = Colors.yellow;
    //paint.color = Color(0xFFFF6F61); // Hex color code for blue
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height * 0.4); // Adjust the diagonal slope
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      drawer: const HomeScreenDrawer(),
      body: Stack(
        children: [
          // Custom Painted background
          CustomPaint(
            size: MediaQuery.of(context).size,
            painter: DiagonalBackgroundPainter(),
          ),
          // Other screen content (e.g., pizza image, price, buttons)
          const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Search Bar Section
                HomeScreenSearchBar(),
                /// Container Search Bar Section
                SearchBarContainer(),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// FilterButtonsSections
                      SizedBox(
                        height: 3,
                      ),
                      FilterButtons(),
                      SizedBox(
                        height: 16,
                      ),
                      /// Oder it again sections
                      RecommendedOrder(),  //done
                      SizedBox(
                        height: 8,
                      ),
                      PromotionalSlides(),
                      SizedBox(
                        height: 8,
                      ),
                      //// Cuisine Item Section
                      CuisineItem(),
                      /// Top Shops Sections
                      SizedBox(
                        height: 8,
                      ),
                      TopShopsSection(),
                      SizedBox(
                        height: 8,
                      ),
                      DiscountSlides(),
                      SizedBox(
                        height: 8,
                      ),
                      ShopCategorySection(),
                      SizedBox(
                        height: 8,
                      ),
                      OfferTagsSection(),
                      SizedBox(
                        height: 8,
                      ),
                      RestaurantCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

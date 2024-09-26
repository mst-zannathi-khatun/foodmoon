import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreencomponents/recommended_orders/priceanddelivery.dart';
import 'package:foodmoon/ui/screens/components/homescreencomponents/recommended_orders/restaurantdetails.dart';
import 'deliverytimeandmethod.dart';
import 'foodimagecard.dart';
import 'order_header_text.dart';

class RecommendedOrder extends StatelessWidget {
  const RecommendedOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildOrderHeaderText(),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 217,
            child: ListView.builder(
                padding: const EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        buildFoodImageCard(),
                        const SizedBox(
                          height: 4,
                        ),
                        buildRestaurantDetails(),
                        buildPriceAndDelivery(),
                        buildDeliveryTimeAndMethod(),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

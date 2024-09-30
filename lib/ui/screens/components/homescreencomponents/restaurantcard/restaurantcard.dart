import 'package:flutter/material.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({super.key});

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity, // Full width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      // Add slight transparency
                      blurRadius: 5,
                      offset: const Offset(
                          2, 2), // Adjust the shadow for depth
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  // Match border radius
                  child: Image.asset(
                    "assets/images/food.jpeg",
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit
                        .cover, // Ensures the image covers the container
                  ),
                ),
              ),
              Positioned(
                top: 10, // Adjust position as needed
                right: 10, // Adjust position as needed
                child: Container(
                  height: 30, // Adjust button size
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    shape: BoxShape.circle, // Make it circular
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        // Button shadow
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    // Remove padding for better icon fitting
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors
                          .red, // Change icon color if desired
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Al Kaderia Restaurant with a very long name that should be clipped",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                    overflow: TextOverflow
                        .ellipsis, // Clip text with ellipsis if it's too long
                  ),
                ),
                Icon(Icons.star, size: 18, color: Colors.amber),
                SizedBox(width: 2),
                Text(
                  "4.7",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4),
                Text("25000 +"),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Text("\$\$"),
                SizedBox(
                  width: 10,
                ),
                Text("\$"),
                SizedBox(
                  width: 4,
                ),
                Text("5.00"),
                SizedBox(
                  width: 4,
                ),
                Text("minimum"),
                SizedBox(
                  width: 10,
                ),
                Text("United states"),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("15-30"),
                SizedBox(
                  width: 2,
                ),
                Text("min"),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.directions_bike,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("\$"),
                Text("3.00"),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(children: [
              Container(
                height: 22,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                ),
                child: const Center(child: Text("20% off: comeback")),
              ),
            ],),
          ),
        ],
      ),
    );
  }
}

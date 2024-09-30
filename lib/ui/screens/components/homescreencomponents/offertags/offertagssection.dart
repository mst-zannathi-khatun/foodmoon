import 'package:flutter/material.dart';

class OfferTagsSection extends StatelessWidget {
  const OfferTagsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0), // Add horizontal space between items
            child: SizedBox(
              height: 130,
              width: 110,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2), // Grey border/stroke
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Same border radius to clip image
                  child: Image.network(
                    'assets/images/food.jpeg', // Replace with your image URL or asset
                    fit: BoxFit.cover, // Ensures the image fits within the box
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

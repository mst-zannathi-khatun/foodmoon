import 'package:flutter/material.dart';

Widget buildDeliveryTimeAndMethod() {
  return const SizedBox(
    width: 250,
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
  );
}

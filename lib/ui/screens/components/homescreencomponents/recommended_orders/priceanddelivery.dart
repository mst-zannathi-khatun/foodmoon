import 'package:flutter/material.dart';

Widget buildPriceAndDelivery (){
  return const SizedBox(
    width: 250,
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
  );
}
import 'package:flutter/material.dart';

class ShopDetailRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double textSize;
  final Color iconColor;

  const ShopDetailRowWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.textSize,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 14,
          color: iconColor,
        ),
        const SizedBox(width: 4),
        SizedBox(
          width: 80,
          child: Text(
            text,
            style: TextStyle(fontSize: textSize, height: 1.0),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

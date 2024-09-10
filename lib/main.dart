import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/home_screen.dart';

void main() {
  runApp(const FoodMoon());
}

class FoodMoon extends StatelessWidget {
  const FoodMoon({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreen_appbar.dart';
import 'components/homescreen_drawer.dart';
import 'components/homescreen_recommended_order_section/recommended_order.dart';
import 'components/homescreen_search_bar.dart';
import 'components/homescreen_searchbarcontainer/searchbarcontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppBar(),
      drawer: HomeScreenDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Search Bar Section
          HomeScreenSearchBar(),
          /// Container Search Bar Section
          SearchBarContainer(),
          /// Oder it again sections
          HomeScreenRecommendedOrder(),
        ],
      ),
    );
  }
}


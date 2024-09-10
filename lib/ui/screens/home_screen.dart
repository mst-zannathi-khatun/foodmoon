import 'package:flutter/material.dart';
import 'package:foodmoon/ui/screens/components/homescreen_appbar.dart';
import 'components/homescreen_drawer.dart';

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
    );
  }
}

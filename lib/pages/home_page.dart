import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List pages = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("data"),
      bottomNavigationBar: MyBottomNavBar(onTabChange: onChangeTab),
    );
  }

  void onChangeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

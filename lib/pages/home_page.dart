import 'package:augmented_reality_app/pages/cart_page.dart';
import 'package:augmented_reality_app/pages/favorites_page.dart';
import 'package:augmented_reality_app/pages/home_page_content.dart';
import 'package:augmented_reality_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomePageContent(),
    FavoritesPage(),
    CartPage(),
    ProfilePage(),
  ];

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.yellow[50],
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.brown[700],
        backgroundColor:Colors.amber[100],
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
      ),
    );
  }
}
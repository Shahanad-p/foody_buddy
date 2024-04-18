import 'package:flutter/material.dart';
import 'package:foody_buddy/controller/bottom_provider.dart';
import 'package:foody_buddy/view/cart.dart';
import 'package:foody_buddy/view/favorite.dart';
import 'package:foody_buddy/view/home.dart';
import 'package:foody_buddy/view/profile.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomProvider>(context);

    return Scaffold(
      body: IndexedStack(
        index: provider.currentIndex,
        children: [
          HomeScreen(),
          Favorite(),
          Cart(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        elevation: 0,
        currentIndex: provider.currentIndex,
        onTap: (index) => provider.buildBotoomBar(index),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.account_circle,
            ),
          ),
        ],
      ),
    );
  }
}

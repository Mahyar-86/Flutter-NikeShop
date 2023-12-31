import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({super.key, required this.onTabChange});

  void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      //create a google navigation bar
      child: GNav(
        gap: 8,
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        //if onTabChange is not null call onTabChange to change page
        onTabChange: (value) => onTabChange!(value),
        //create tabs
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: "Delivery"),
        BottomNavigationBarItem(icon: Icon(Icons.dining), label: "Dining"),
      ],
      selectedItemColor: Colors.red,
    );
  }
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Icon(Icons.location_on, color: Colors.black),
      title: const Text(
        "Garh Road",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}

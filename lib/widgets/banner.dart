import 'package:flutter/material.dart';

class FlashSaleBanner extends StatelessWidget {
  const FlashSaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "ENDS AT 3 PM",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            "FLASH SALE",
            style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text("FLAT 50% OFF"),
          )
        ],
      ),
    );
  }
}

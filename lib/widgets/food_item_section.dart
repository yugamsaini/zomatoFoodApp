import 'package:flutter/material.dart';

class FoodItemsSection extends StatefulWidget {
  const FoodItemsSection({super.key});

  @override
  _FoodItemsSectionState createState() => _FoodItemsSectionState();
}

class _FoodItemsSectionState extends State<FoodItemsSection> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();

  @override
  void initState() {
    super.initState();

    // Synchronize both rows' scroll positions
    _scrollController1.addListener(() {
      if (_scrollController1.offset != _scrollController2.offset) {
        _scrollController2.jumpTo(_scrollController1.offset);
      }
    });

    _scrollController2.addListener(() {
      if (_scrollController2.offset != _scrollController1.offset) {
        _scrollController1.jumpTo(_scrollController2.offset);
      }
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // List of food items
    final foodItems = ['Pizza', 'Cake', 'Burger', 'Chaat', 'Chowmein', 'Pasta'];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Food Items',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          // First horizontal scrollable row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController1,
            child: Row(
              children: foodItems
                  .map((item) => _buildFoodItemCard(item))
                  .toList(),
            ),
          ),
          
          const SizedBox(height: 16),

          // Second horizontal scrollable row (synchronized with the first)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController2,
            child: Row(
              children: foodItems
                  .map((item) => _buildFoodItemCard(item))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build each food item card
  Widget _buildFoodItemCard(String item) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.fastfood, 
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(height: 8),
          Text(item, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

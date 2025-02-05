import 'package:flutter/material.dart';
import 'package:zomatofoodapp/widgets/icon_card.dart';  

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: const Text(
              'Explore',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconCard(
                icon: Icons.local_offer,
                label: 'Offers',
                onTap: () {
                  
                },
              ),
              IconCard(
                icon: Icons.star,
                label: 'Top 10',
                onTap: () {
                 
                },
              ),
              IconCard(
                icon: Icons.train,
                label: 'Food on Train',
                onTap: () {
               
                },
              ),
              IconCard(
                icon: Icons.card_giftcard,
                label: 'Gift Cards',
                onTap: () {
                  
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

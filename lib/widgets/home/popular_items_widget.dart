import 'package:flutter/material.dart';

import 'package:men_you/widgets/home/single_popular_item.dart';
import '../../util/popular_item.util.dart';

class PopularItemsWidget extends StatelessWidget {
  final List<PopularItemData> items = [
    PopularItemData('burger', 'Hot Burger', 'Taste Our Hot Spicy Burger', 10,15,0),
    PopularItemData('salad', 'Chicken Salad', 'Taste Our Chicken Salad', 9 , 15,0),
    PopularItemData('pizza', 'Hot Pizza', 'Taste Our Hot Pizza Salad', 14 , 15,0),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 5
          ),
          child: Row(
            children: [
              for(PopularItemData item in items)
              SinglePopularItem(item)
            ],
          ),
      ),
    );
  }

}
import 'package:flutter/material.dart';

import 'package:men_you/widgets/single_popular_item.dart';
import '../util/popular_item.util.dart';

class PopularItemsWidget extends StatelessWidget {
  final List<PopularItemData> items = [
  PopularItemData('burger', 'Hot Burger', 'Taste Our Hot Burger', 10),
  PopularItemData('salad', 'vegetarian Salad', 'Taste Our Wonderful Salad', 9)];

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
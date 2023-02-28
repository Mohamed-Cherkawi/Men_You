import 'package:flutter/material.dart';
import 'package:men_you/widgets/Home/categories_widget.dart';
import 'package:men_you/widgets/Home/search_field_widget.dart';

import '../widgets/home/app_bar_widget.dart';
import '../widgets/home/newest_item_widget.dart';
import '../widgets/home/popular_items_widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            AppBarWidget(),
            // Search Field Widget
            SearchFieldWidget(),
            // Category
            const Padding(
              padding: EdgeInsets.only(top: 20 , left: 10),
              child: Text(
                  'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CategoriesWidget(),
            // Popular Items
            const Padding(
              padding: EdgeInsets.only(top: 20 , left: 10),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            // Popular Items Widget
            PopularItemsWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 20 , left: 10),
              child: Text(
                'Newest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // Newest Item Widget
            NewestItemWidget(),
          ],
        ),
    );
  }
}
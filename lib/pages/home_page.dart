import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:men_you/widgets/Home/categories_widget.dart';
import 'package:men_you/widgets/Home/search_field_widget.dart';

import '../widgets/drawer_widget.dart';
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
      // Drawer
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0,3)
            ),
          ]
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(
                context,
                'cartPage'
            );
          },
          backgroundColor: Colors.white,
          child: const Icon(
              CupertinoIcons.cart,
              size: 28,
              color: Colors.red,
          ),
        ),
      ),
    );
  }
}
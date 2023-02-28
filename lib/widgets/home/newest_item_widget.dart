import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../util/popular_item.util.dart';

class NewestItemWidget extends StatelessWidget {
  final List<PopularItemData> items = [
    PopularItemData('biryani', 'Spaghetti Chicken', "You Don't Wanna Miss This One", 15,0),
    PopularItemData('drink', 'CocaCola Lemonade', 'Enjoy The Moment', 4 , 0),
    PopularItemData('tacos', 'Tacos', 'Delicious Tacos multi sauces', 16,0),
  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10 ,
                horizontal: 10
            ),
            child: Column(
              children: [
                for(PopularItemData item in items)
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 380,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(0,3)
                          ),
                        ]
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                  'images/${item.imageFileName}.png',
                                  width: 150,
                                  height: 120,
                              ),
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:  [
                                 Text(
                                  item.itemTitle,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                 Text(
                                  item.itemDescription,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                
                                RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 18,
                                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                                    itemBuilder: (context , _) => const Icon(Icons.star),
                                    onRatingUpdate: (index){},
                                ),
                                
                                 Text(
                                  '\$${item.itemPrice}',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 26,
                                ),
                                Icon(
                                  CupertinoIcons.cart,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                )
              ],
            ),
        ),
    );
  }
}
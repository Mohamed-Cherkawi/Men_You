import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:men_you/widgets/home/app_bar_widget.dart';
import '../util/popular_item.util.dart';

class CartPage extends StatelessWidget {
  final List<PopularItemData> items = [
    PopularItemData('pizza', 'Hot Pizza', "Taste Our Hot Pizza Salad", 14,0,2),
    PopularItemData('drink', 'CocaCola Lemonade', 'Enjoy The Moment', 4 , 0,1),
    PopularItemData('tacos', 'Tacos', 'Delicious Tacos multi sauces', 16,0,1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarWidget(),
                    const Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 10,
                          bottom: 10,
                        ),
                      child: Text(
                          'Order List',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                    for(PopularItemData item in items)
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: Container(
                          width: 380,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: const Offset(0, 3)
                              )
                            ]
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "images/${item.imageFileName}.png",
                                  height: 80,
                                  width: 150,
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      item.itemDescription,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          //fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      '\$${item.itemPrice}',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  [
                                        const Icon(
                                          CupertinoIcons.minus,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          item.quantity.toString(),
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                        const Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                              )
                            ],
                          ),
                        ),
                    ),
                     Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 30
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: const Offset(0, 3)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                        'Items',
                                        style: TextStyle(
                                          fontSize: 20
                                        ),
                                    ),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                    )
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }

}
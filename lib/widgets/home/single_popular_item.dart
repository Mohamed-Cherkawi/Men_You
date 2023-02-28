import 'package:flutter/material.dart';
import 'package:men_you/util/popular_item.util.dart';

class SinglePopularItem extends StatelessWidget {
  final PopularItemData item;


  SinglePopularItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 170,
        height: 250,
        decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3)
              )
            ]),
        child: Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: item.edgeInsetsSymetric
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'images/${item.imageFileName}.png',
                  height: 130,
                ),
              ),
               Text(
                item.itemTitle ,
                style: const TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 4),
               Text(
                item.itemDescription,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "\$ ${item.itemPrice}",
                    style: const TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 16,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
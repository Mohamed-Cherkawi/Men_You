import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  List<String> imagesPath = ['biryani' , 'burger' , 'drink' ,'pizza','salad'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var imageFileName in imagesPath)
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 5
              ),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white ,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]
                ),
                child: Image.asset(
                    'images/$imageFileName.png',
                    width: 50,
                    height: 50,
                ),
              ),
            ),
          ],
        ),
    );
  }
  
}
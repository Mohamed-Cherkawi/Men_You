import 'package:flutter/material.dart';

import 'package:men_you/pages/cart_page.dart';
import 'package:men_you/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Men You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),
      routes: {
        '/' : (context) => HomePage(),
        'cartPage' : (context) => CartPage(),
      },
    );
  }

}
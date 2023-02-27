import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            AppBarWidget(),
          ],
        ),
    );
  }
}
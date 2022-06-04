import 'package:flutter/material.dart';

import '../home_body.dart';


class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      //appBar: homeappbar(),

      body:
      Homebody(),
    );
  }

  AppBar homeappbar() {
    return AppBar(
      title: Text("Hello in my app"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ],
    );
  }
}

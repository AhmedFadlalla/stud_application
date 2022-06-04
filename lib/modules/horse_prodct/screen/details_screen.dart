import 'package:flutter/material.dart';


import '../../../models/product.dart';
import '../details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.proo}) : super(key: key);
  final HorseProductModel proo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: detailsappbar(context),*/
      body: DetailsBody(
        proo: proo,
      ),
    );
  }

  AppBar detailsappbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[300],
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 20.0),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      leading: null,
      title: Padding(
        padding: const EdgeInsets.only(
          left: 200.0,
        ),
        child: Text(
          "رجوع",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 22.0,
              color: Color.fromARGB(255, 54, 244, 12),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

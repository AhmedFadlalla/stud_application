import 'package:flutter/material.dart';

class productimage extends StatelessWidget {
  const productimage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: size.width - 180,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.75,
            width: size.width * 0.75,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.width * 0.60,
            width: size.width * 0.65,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

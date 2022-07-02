import 'package:flutter/cupertino.dart';

class ImageCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double heightDelta = size.height / 2.2;

    return Path()
      ..addRect(
          Rect.fromLTWH(0, heightDelta, size.width, size.height - heightDelta))
      ..moveTo(0, heightDelta)
      ..quadraticBezierTo(
        size.width / 2,
        heightDelta - size.width / 2,
        size.width,
        heightDelta,
      );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
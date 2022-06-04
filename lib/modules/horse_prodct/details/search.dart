import 'package:flutter/material.dart';

class searchbord extends StatelessWidget {
  const searchbord({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                hintTextDirection: TextDirection.rtl,
                hintText: "البحث عن منتج ",
                suffixIcon: Icon(
                  Icons.add_road_rounded,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,

              ),
            ),
          ),
        ),
      ),
    );
  }
}

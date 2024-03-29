
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF4DB6AC),
        titleSpacing: 20.0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFF4DB6AC),
          statusBarIconBrightness: Brightness.dark,
        ),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defaultColor,
        unselectedItemColor: Colors.grey,
        elevation: 20.0,
        backgroundColor: Colors.white),

    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
    subtitle1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
        height: 1.3

    ),
        caption: TextStyle(
            height: 1.4,
            color: Colors.black
        )
    ),
    );
ThemeData darkTheme = ThemeData(
    primarySwatch: defaultColor,
    scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: AppBarTheme(
        backgroundColor: HexColor('333739'),
        titleSpacing: 20.0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: HexColor('333739'),
          statusBarIconBrightness: Brightness.light,
        ),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        elevation: 20.0,
        backgroundColor: HexColor('333739')),


    textTheme: TextTheme(
        bodyText1: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
        subtitle1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1.3
        ),
        caption: TextStyle(
            fontSize: 6.0, fontWeight: FontWeight.bold, color: Colors.white)

    ),
    );

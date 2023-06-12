import 'package:flutter/material.dart';

String uri = 'http://182.79.4.248:3000';

class GlobalVariables
{
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(164, 68, 68, 1);
  static const backgroundColor = Color.fromARGB(255, 236, 218, 179);
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static const selectedNavBarColor = Color.fromRGBO(164, 68, 68, 1);
  static const unselectedNavBarColor = Colors.black87;
}
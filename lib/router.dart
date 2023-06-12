// ignore: unused_import
import 'package:eco_feast_2/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'features/auth/screens/auth_screen_signup.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen2.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen2(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              'Screen Does Not Exist'),
              ),
        ),
      );
  }
}
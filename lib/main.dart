// ignore: unused_import
import 'package:eco_feast_2/features/auth/screens/auth_screen.dart';
// ignore: unused_import
import 'package:eco_feast_2/features/auth/screens/auth_screen_signup.dart';
import 'package:eco_feast_2/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoFeast',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      onGenerateRoute: (settings) => generateRoute(settings) ,
      home:  const AuthScreen()
      );
  }
}


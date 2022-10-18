// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'DetailsPage.dart';
import 'ListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/list": (context) => ListPage(),
        "/details": (context) => DetailsPage(),
      },
    );
  }
}

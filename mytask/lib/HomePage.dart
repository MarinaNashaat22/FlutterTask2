// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Good Food'),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Image.network(
                        'http://1.bp.blogspot.com/-HTWzesyT5Zo/UXqE7ZdJs4I/AAAAAAAAE1U/hk1j2Y2JaWQ/s1600/www.easyvn.net--24-food-wallpapers--015.jpg'),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/list");
                      },
                      child: Text('Go to List')),
                ],
              ),
            )));
  }
}

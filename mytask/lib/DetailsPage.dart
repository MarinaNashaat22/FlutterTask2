// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mytask/Data.dart';

class DetailsPage extends StatelessWidget {
  Data store = Data();

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, Object>;
    print(args['id']);
    print(args['name']);

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.teal,
                title: Text(args['name'] as String)),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // GridView.builder(gridDelegate: null,),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop('/list');
                      },
                      child: Text('Back to List Page')),
                ],
              ),
            )));
  }
}

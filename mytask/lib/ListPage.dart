// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'Data.dart';

class ListPage extends StatelessWidget {
  Data store = Data();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListPage'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        // body: Padding(
        //   padding: EdgeInsets.all(10),
        body: ListView.builder(
          itemCount: store.CategoryList.length,
          itemBuilder: (context, index) =>
              CategoriItem(categori: store.CategoryList[index]),
        ),
      ),
    );
  }
}

class CategoriItem extends StatelessWidget {
  Categori categori;
  CategoriItem({required this.categori});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            // onTap: () {
            //   Navigator.of(context).pushNamed("/details",
            //       arguments: {'id': categori.id, 'name': categori.name});
            // },
            child: ListTile(
              title: Text(categori.name),
              subtitle: Image(image: AssetImage(categori.imgUrl)),
              // style: ListTileStyle.list,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  width: 3,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
          width: 200,
          child: Divider(
            color: Colors.teal,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/details",
                  arguments: {'id': categori.id, 'name': categori.name});
            },
            child: Text('Go to Details')),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:typer/view/BookSearchPage.dart';
import 'package:typer/view/homepage.dart';
import 'package:typer/viewmodel/customAppBar.dart';
import 'package:typer/viewmodel/naviBarPage.dart';

import '../viewmodel/drawer.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Yeni Gönderi", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NavigationModel()));
          },
          color: Colors.black,
        ),
        actions: <Widget>[
          TextButton(
              child: Text(
                'Taslaklar',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                print('Pressed');
              }),
          TextButton(
              child: Text(
                'Paylaş',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                print('Pressed');
              }),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 30,
        width: 90,
        child: FloatingActionButton.extended(
          label: Text(
            'Kitaplar',
            style: TextStyle(color: Colors.black),
          ),
          // <-- Text
          backgroundColor: Colors.grey.shade400,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          icon: Icon(
            // <-- Icon
            Icons.add,
            size: 10.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BookSearchPage()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: TextFormField(
              maxLines: 9,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Neler Düşünüyorsun?',
              ),
            ),
          ),
        ]),
      ));
}

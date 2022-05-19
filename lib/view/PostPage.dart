import 'package:flutter/material.dart';
import 'package:typer/viewmodel/customAppBar.dart';

import '../viewmodel/drawer.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>Scaffold(
    drawer: DrawerWidget(),
    appBar: CustomAppBar(appbarText: "Yeni Gönderi",iconRight: Icon(Icons.add)),
    backgroundColor: Colors.red,
      body: Center(
        child: Text
        ("PostPage")
      ,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:typer/viewmodel/customAppBar.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: CustomAppBar(appbarText: "Gönderi",iconRight: Icon(Icons.add,color: Colors.black,)),
    backgroundColor: Colors.red,
      body: Center(
        child: Text
        ("PostPage")
      ,
    ),
  );
}

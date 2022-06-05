import 'package:flutter/material.dart';
import 'package:typer/view/PostPage.dart';
import 'package:typer/viewmodel/widgets/naviBarPage.dart';

import '../viewmodel/widgets/customAppBar.dart';
import '../viewmodel/widgets/drawer.dart';

class BookSearchPage extends StatelessWidget {
  @override
  var _controller = TextEditingController();

  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
       iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
      backgroundColor: Colors.white,
      title: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Bir kitap arayın...',

          suffixIcon: IconButton(
            onPressed: _controller.clear,
            icon: Icon(Icons.clear, color: Colors.black,),
          ),
        ),
      ),
    ),
    body: Center(

    ),
  );
}

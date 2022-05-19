import 'package:flutter/material.dart';

import '../viewmodel/customAppBar.dart';
import '../viewmodel/drawer.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerWidget(),
        appBar: CustomAppBar(
            appbarText: "Keşfet",
            iconRight: Icon(
              Icons.search,
              color: Colors.black,
            )),
        backgroundColor: Colors.red,
        body: Center(
          child: Text("SearchPage"),
        ),
      );
}

import 'package:flutter/material.dart';

import '../viewmodel/customAppBar.dart';
import '../viewmodel/drawer.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>Scaffold(
    drawer: DrawerWidget(),
    appBar: CustomAppBar(appbarText: "Profile",iconRight: Icon(Icons.person,color: Colors.black,)),
    backgroundColor: Colors.blue,
    body: Center(
      child: Text
        ("Profile Page")
      ,
    ),
  );
}

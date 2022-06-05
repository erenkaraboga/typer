import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:typer/view/BookSearchPage.dart';
import 'package:typer/view/homepage.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import '../../view/PostPage.dart';
import '../../view/profile/ProfilePage.dart';
class NavigationModel extends StatefulWidget {
  const NavigationModel({Key? key}) : super(key: key);

  @override
  _NavigationModelState createState() => _NavigationModelState();
}

class _NavigationModelState extends State<NavigationModel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const SafeArea(
          child: Material(
            color: Colors.white10,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.black45,
              tabs: [
                Tab(child: Icon(Icons.home_outlined,color: Colors.black)),
                Tab(child: Icon(Icons.search, color: Colors.black)),
                Tab(child: Icon(Icons.add, color: Colors.black)),
                Tab(child: Icon(Icons.person_outline,
                        color: Colors.black))
              ],
            ),
          ),
        ),
        body:  TabBarView(
          children: [
            HomePage(),
            BookSearchPage(),
            PostPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}

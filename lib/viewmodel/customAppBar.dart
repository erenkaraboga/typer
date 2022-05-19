import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({ Key? key,required this.appbarText,required this.iconRight }) : super(key: key);
  final Icon iconRight;
  final String appbarText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(appbarText,style: TextStyle(color:  Colors.black),),
        backgroundColor: Colors.white,
        leading:  IconButton(
          icon :Icon(Icons.menu),
          onPressed: () {
          Scaffold.of(context).openDrawer();
        },
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.all(12.0),
            child: iconRight,
          )
        ],
      );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
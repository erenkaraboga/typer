import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              SizedBox(
                height: 89,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Text(
                    'TypeR',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              ListTile(

                leading: Icon(Icons.archive_outlined),
                title: Text('Kaydedilenler'),
              ),
              ListTile(
                leading: Icon(Icons.library_add_outlined),
                title: Text('İstek'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Ayarlar'),
              ),
              Divider(),
              SizedBox(width: 3, height: 310,),
              Divider(),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Hakkında'),
              ),
            ],
          ),
      );
  }
}

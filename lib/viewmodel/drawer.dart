import 'package:flutter/material.dart';
import 'package:typer/view/introductionScreen.dart';

class DrawerWidget extends StatefulWidget {
   DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
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
                onTap: (){
             
                },
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
              SizedBox(width: 3, height: 250,),
              ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text('Değerlendir'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IntroPage();
              }));
            },
          ),
              Divider(),
              ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Hakkında'),
               onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IntroPage();
              }));
            },
            ),
            ],
          ),
      );
  }
}

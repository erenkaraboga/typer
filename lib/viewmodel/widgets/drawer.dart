import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:typer/view/intro_views/introductionScreen.dart';
import 'package:typer/view/login.dart';

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
              SizedBox(width: 3, height: 200,),
              ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text('Değerlendir'),
            onTap: () {
             openRateDialog();
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
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Çıkış Yap'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
            ],
          ),
      );
  }
    openRateDialog() => showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) => buildRatingg(),
      );
      Widget buildRatingg() => RatingDialog(
        initialRating: 1.0,
        title: Text(
          'Puanla!',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        // encourage your user to leave a high rating?
        message: Text(
          'Yıldıza tıkla ve puanla. İstersen yorum yapabilirsin!',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15),
        ),
        // your app's logo?
        image: Image.asset(
          'assets/images/logo2.png',
          fit: BoxFit.fitWidth,
          width: 150,
          height: 159,
        ),

        submitButtonText: 'Gönder',
        submitButtonTextStyle: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        commentHint: 'Yorumunuz...',
        starColor: Color(0xff85dfe0),
        onCancelled: () => print('cancelled'),
        onSubmitted: (response) {
          print('rating: ${response.rating}, comment: ${response.comment}');
        },
      );
}

import 'package:flutter/material.dart';
import 'package:typer/main.dart';

import '../../model/model.dart';
import '../../viewmodel/widgets/cardWidget.dart';

class ProfilPostsPage extends StatelessWidget {
  const ProfilPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
                child: ListView(
              children: [
                CarWidget(
                    avatarUrl:
                        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Images-HD.png",
                    userName: "ErenKaraboga",
                    bookName: "Monte Kristo Kontu",
                    bookUrl:
                        "https://www.pirtukakurdi.com/image/cache/catalog/data/dr/Iskele-Yayincilik/monte-kristo-kontu-105597-1160x1824.jpg",
                    desc:
                        "Düşmanlarının hazırladığı bir tuzakla suçsuz yere hapse atılan Edmond Dantés'nin 14 yıllık mahkumiyetten sonra, felaketine neden olanlardan intikam almasını konu edinir. Olay örgüsü Monte Kristo Kontu, Edmond Dantés, Morrel, Mercedes, Villefort, Caderousse, Fernand adlı roman kişileri ve çocukları etrafında gelişir."),
                   CarWidget(
                    avatarUrl:
                        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Images-HD.png",
                    userName: "ErenKaraboga",
                    bookName: "Yabanci",
                    bookUrl:
                        "https://img.kitapyurdu.com/v1/getImage/fn:11262270/wh:true/miw:200/mih:200",
                    desc:
                        "Tüm zamanların en tanınmış yazarlarından biri olan Albert Camus, en fazla ses getiren “Yabancı” adlı romanı ile okuyucularla buluşuyor. ")
              ],
            )),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:typer/viewmodel/cardWidget.dart';
import 'package:typer/model/model.dart';
import 'package:typer/viewmodel/customAppBar.dart';
import 'package:typer/viewmodel/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: CustomAppBar(appbarText: "TypeR",iconRight: Icon(Icons.near_me_outlined,color: Colors.black,)),
      body: Column(children: [
      
        Expanded(
          child: SafeArea(child: ListView(children: [
            CarWidget(model: cardModel("https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png", "https://i.pinimg.com/564x/0a/69/15/0a691582f7ff1fe8a320a4c15193448f.jpg", "Eren Kanık", "Budapest Hotel", "The story involves the theft and recovery of a priceless Renaissance painting and the battle for an enormous family fortune  all against the backdrop of a suddenly and dramatically changing continent. A teenage girl visits the monument of the writer who penned the book, The Grand Budapest Hotel.")),
            CarWidget(model: cardModel("https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Images-HD.png", "https://www.pirtukakurdi.com/image/cache/catalog/data/dr/Iskele-Yayincilik/monte-kristo-kontu-105597-1160x1824.jpg", "İbrahım Çiçek", "Monte Kristo Kontu", "Arkanızda zulmün sembolü duruyor! Blackgate Hapishanesi, neredeyse bin kişinin .bu adamın yüzünden çürüdüğü yer:Harvey Dent. Adaletin ışığının örneği olarak önünüze çıkardıkları adam!Bu yozlaşmış şehri yerle bir etmenizi engellemek için önünüze sahte bir idol koyarak sizleri kandırdılar! Size Harvey Dent hakkındaki gerçekleri anlatayım! Gotham Emniyet Müdürü James Gordon'un sözleri.")),    
            CarWidget(model: cardModel("https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png", "https://images.squarespace-cdn.com/content/v1/5c6c5a280cf57d9024383ae4/1555967167806-BIGGX3ZETC8RRO4TG5CA/Stefan+Zweig+The+Post+Office+Girl+Sort+of+Books?format=500w", "Enes Susan", "The Post Office Girl","Olağanüstü Bir Gece, seçkin bir burjuva olarak rahat ve tasasız varoluşunu sürdürürken giderek duyarsızlaşan bir adamın hayatındaki dönüştürücü deneyimin hikâyesidir. Sıradan bir pazar gününü at yarışlarında geçirirken, belki de ilk kez burjuva ahlakından saparak")),
            CarWidget(model:cardModel("https://p1.hiclipart.com/preview/793/504/966/avatar-icon-ninja-samurai-icon-design-red-smile-circle-png-clipart.jpg", "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1600548433l/27839637._SY475_.jpg", "Eren Karaboğa", "Olağanüstü Bir Gece", "Stephen King’in son şaheseri Billy Summers, hem bir savaş hikâyesi, hem de Amerika’nın küçük kasabalarına ve orada yaşayan insanlara yazılmış bir aşk mektubu. Eli kanlı bir intikam romanı. Aşk, şans, kader ve kurtuluş için tek atımlık kurşunu kalmış karmaşık u kalmış karmaşık bir kahramanın karanlık hikâyesi."))
          ],)),
        ),
       
      ]),
    );
  }
}
/*  Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red.shade100,
                border: Border.all(color: Colors.pink.shade400, width: 2),
                borderRadius: BorderRadius.circular(30)),
            width: 100,
            height: 40,
            child: const Center(
                child: Text(
              "Kategoriler",
              style: TextStyle(fontSize: 15),
            )),
          ),
        )),*/

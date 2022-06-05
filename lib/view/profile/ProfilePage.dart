import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:typer/view/profile/ProfilePostsPage.dart';



import '../../viewmodel/widgets/customAppBar.dart';
import '../../viewmodel/widgets/drawer.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>DefaultTabController(length: 1,
    child: Scaffold(
      drawer: DrawerWidget(),
      appBar: CustomAppBar(appbarText: "Profile",iconRight: Icon(Icons.person,color: Colors.black,)),
      backgroundColor: Colors.white,
      body: Column(
        children:[
         Padding(
           padding: const EdgeInsets.only(left: 20.0,top:20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               //profil resmi
               Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: NetworkImage(
                                "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Images-HD.png")),
                   shape: BoxShape.circle,
                   

                 ),
               ),
             Spacer(flex: 2),
             //gönderi sayısı bölümü
             Expanded(
               child: Row(
                 children: [
                   Column(
                     children: [
                       Text("2",style: TextStyle(fontSize: 25),),
                       Text("Gönderi", style: TextStyle(fontSize: 15))
                     ],
                   ),
                 ],
               ),
             ),
              Spacer(flex: 1,),
             ],
           ),
         ),
          //isim nickname
          Padding(
            padding: const EdgeInsets.all( 20.0),
            child: Row(
              children: [
                Column(
crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Text("ErenKaraboga",style:TextStyle(fontSize: 20) ,),
                    Text("karabogaEren",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold ) ,),
                  ],
                ),
              ],
            ),
          ),
      TabBar(indicatorColor:Colors.black ,
       tabs:[
        Tab(
          child: Text("Gönderiler",style: TextStyle(color: Colors.black),),
           )
        ]),
         Expanded(child: TabBarView(
           children: [
             ProfilPostsPage()
           ],

         ) )
        ],
      ),
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:typer/view/ProfilePostsPage.dart';



import '../viewmodel/customAppBar.dart';
import '../viewmodel/drawer.dart';
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
                   color:  Colors.grey,
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
                       Text("0",style: TextStyle(fontSize: 25),),
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
                    Text("Enes Susan",style:TextStyle(fontSize: 20) ,),
                    Text("enessusan",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold ) ,),
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

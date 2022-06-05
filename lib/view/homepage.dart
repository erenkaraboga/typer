import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:typer/viewmodel/widgets/cardWidget.dart';
import 'package:typer/model/databaseModel.dart';
import 'package:typer/viewmodel/widgets/customAppBar.dart';
import 'package:typer/viewmodel/widgets/drawer.dart';

import '../model/model.dart';
import '../services/helper.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late RequestService service;
  List<Posts>? posts;
  void initState() {
    service = new RequestService();
    service.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: CustomAppBar(
          appbarText: "TypeR",
          iconRight: Icon(
            Icons.near_me_outlined,
            color: Colors.black,
          )),
      body: FutureBuilder<List<TyperModel>?>(
        future: service.getData(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            if (snap.hasData) {
              return ListView.builder(
                itemCount: snap.data?.length,
                itemBuilder: (context, index) {
                  var model = TyperModel();
                  model = snap.data![index];
                  posts = model.posts;

                  return Column(children: [
                    //Text( model.avatarUrl! +" "+ model.userName!+ " "+model.posts![0].bookName!+" "+model.posts![0].url!+" "+model.posts![0].description!)
                    CarWidget(
                        avatarUrl: model.avatarUrl!,
                        userName: model.userName!,
                        bookName: model.posts![0].bookName!,
                        bookUrl: model.posts![0].url!,
                        desc: model.posts![0].description!)
                  ]);
                },
              );
            } else {
              return const Text("data");
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:typer/model/databaseModel.dart';

import '../../model/model.dart';

class CarWidget extends StatefulWidget {
  const CarWidget({
    Key? key,
    required this.avatarUrl,
    required this.userName,
    required this.bookName,
    required this.bookUrl,
    required this.desc,
  }) : super(key: key);

  final String avatarUrl;
  final String userName;
  final String bookName;
  final String bookUrl;
  final String desc;
  @override
  State<CarWidget> createState() => _CarWidgetState();
}

class _CarWidgetState extends State<CarWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 10,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            ListTile(
              title: Text(widget.userName),
              subtitle: Text(widget.bookName),
              leading: ClipOval(
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 25,
                      child: Image(
                        image: NetworkImage(widget.avatarUrl),
                      ))),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
            //TODO Burası CONTAİNER İLE Yapılacak
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              width: 400,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(alignment: Alignment.center, children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image.network(widget.bookUrl, fit: BoxFit.contain),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReadMoreText(widget.desc,
                  trimLines: 2,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Devamı',
                  trimExpandedText: 'Gizle',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_outline, size: 25),
                  Icon(Icons.chat_bubble_outline, size: 25),
                  Icon(Icons.near_me_outlined, size: 25),
                  Spacer(),
                  Icon(
                    Icons.bookmark_outline,
                    size: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

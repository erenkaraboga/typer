import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:typer/view/homepage.dart';
import 'package:typer/viewmodel/widgets/naviBarPage.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Image? _selectedImage;

  Future _getImage() async {
    XFile? result = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (result == null) return;
    final path = result.path;
    if (path != null) {
      _resetState();
      setState(() {
        _selectedImage = Image.file(File(path));
      });
    }
  }

  void _resetState() {
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Yeni Gönderi", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NavigationModel()));
          },
          color: Colors.black,
        ),
        actions: <Widget>[
          TextButton(
              child: Text(
                'Taslaklar',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                print('Pressed');
              }),
          TextButton(
              child: Text(
                'Paylaş',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  NavigationModel()),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Resim Ekle',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade400,
        icon: Icon(
          Icons.photo_library_outlined,
          size: 15.0,
          color: Colors.black,
        ),
        onPressed: () {
          _getImage();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Kitap Adı',
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Yazar Adı',
              )),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Neler Düşünüyorsun?',
                ),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              child: CustomPaint(
                child: _selectedImage,
              ),
            )
          ]),
        ),
      ));
}

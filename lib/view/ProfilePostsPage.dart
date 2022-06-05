import 'package:flutter/material.dart';
import 'package:typer/main.dart';

import '../model/model.dart';
import '../viewmodel/cardWidget.dart';
class ProfilPostsPage extends StatelessWidget {
  const ProfilPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :Column(
          children: [
            Expanded(
              child: SafeArea(child: ListView(children: [
                   
              ],)),

            ),
          ],
        ),
    );
  }
}

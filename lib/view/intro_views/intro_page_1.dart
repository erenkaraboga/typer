import 'package:flutter/material.dart';
class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/1.jpg'),
      fit: BoxFit.contain,
      alignment: Alignment.topCenter
    ),   
    )
  );
  }
}

import 'package:flutter/material.dart';
class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/3.jpg'),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter),
    ));
  }
}

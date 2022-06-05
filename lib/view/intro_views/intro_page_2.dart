import 'package:flutter/material.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/2.jpg'),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter),
    ));
  }
}

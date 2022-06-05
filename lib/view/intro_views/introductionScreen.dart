import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:typer/view/login.dart';
import 'package:typer/view/profile/ProfilePage.dart';
import 'package:typer/view/homepage.dart';
import 'package:typer/view/intro_views/intro_page_1.dart';
import 'package:typer/view/intro_views/intro_page_2.dart';

import 'intro_page_3.dart';



class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  PageController _controller = PageController();
  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged:(index){
              setState(() {
                onLastPage=(index==2);
              });
          },
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3()
            ],
          ),
        Container(alignment: Alignment(0,0.90),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //atla
                GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(2);
            },
                    child:  Text("Atla")
             ),
                SmoothPageIndicator(controller: _controller, count: 3
                ,effect:SwapEffect(
                    activeDotColor: Color(0xff85dfe0),
                    dotColor: Color(0xffc6eeee),
                    dotHeight: 15,
                    dotWidth: 15,
                    spacing: 10,
                  ) ,),
                //sonraki
                onLastPage
                ? GestureDetector(
                    onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  },
                  ),
                  );
                },
                    child: Text("Bitir"))
                : GestureDetector(
                    onTap:(){
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn
                      );
                    },
                    child: Text("İleri")),
              ],
            ))
        ],
      )
    );
  }
}



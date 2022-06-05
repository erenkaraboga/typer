
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:typer/view/intro_views/introductionScreen.dart';
import 'package:typer/view/login.dart';
import 'package:typer/viewmodel/widgets/naviBarPage.dart';

import 'view/homepage.dart';

Future main()async {
   WidgetsFlutterBinding.ensureInitialized();
     await initialization(null);
   HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 2));
}
class MyHttpOverrides extends HttpOverrides {
  @override
  
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  IntroPage(),
    );
  }
}

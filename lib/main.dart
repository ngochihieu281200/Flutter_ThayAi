

import 'package:flutter/material.dart';
import 'package:ngochihieu_18dh110909/SplashPage/SplashPage.dart';
import 'package:ngochihieu_18dh110909/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: SplashPage(),
    );
  }
}


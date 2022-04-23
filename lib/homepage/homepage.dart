

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/homepage/components/body.dart';

class HomePage extends StatelessWidget{
  int selectIndex=0;
  static String routeName ="/home_screen";

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build (BuildContext context){
    return Body();
  }
}
import  'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Components/Body.dart';

import 'package:ngochihieu_18dh110909/SignIn/Components/Body.dart';
class SignInPage extends StatefulWidget {
  static String routeName = "/sign_in";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}

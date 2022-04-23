
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/SignIn/Components/signInForm.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [header(context), SignInForm(), footer(context)],
      ),
    ));
  }

  Widget header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topRight,
      child: Image.asset('assets/dish.png'),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('assets/dish_2.png'),
      alignment: Alignment.bottomLeft,
    );
  }
}

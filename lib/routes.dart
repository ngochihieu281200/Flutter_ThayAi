// import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/SignIn/signInPage.dart';
import 'package:ngochihieu_18dh110909/SignUp/signUpPage.dart';
import 'package:ngochihieu_18dh110909/SplashPage/SplashPage.dart';
import 'package:ngochihieu_18dh110909/homepage/homepage.dart';
import 'package:ngochihieu_18dh110909/category/category_page.dart';

final Map<String,WidgetBuilder> routes = {
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName : (context) => SignInPage(),
  SignUpPage.routeName : (context) => SignUpPage(),
  HomePage.routeName : (context) => HomePage(),
  CategoryPage.routeName : (context) => CategoryPage()
};
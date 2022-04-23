
import 'package:flutter/material.dart';
import 'package:ngochihieu_18dh110909/homepage/components/fragment/accout_detail.dart';
import 'package:ngochihieu_18dh110909/homepage/components/fragment/favorite_fragment.dart';
import 'package:ngochihieu_18dh110909/homepage/components/fragment/home_fragment.dart';
import 'package:ngochihieu_18dh110909/homepage/components/fragment/notification_fragment.dart';
import 'package:ngochihieu_18dh110909/homepage/components/homeheader.dart';
import 'package:ngochihieu_18dh110909/models/utilities.dart';
import 'menuheader.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      HomeDetail(),
      FavoriteDetail(Utilities.data),
      NotificationFragment(),
      AccountDetail()
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:!flag? Colors.green:Colors.blue,
        title: flag ?   HomeHeader():MenuHeader(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index){
          setState(() {
            selectIndex = index;
            if(selectIndex != 3){
              flag = true;
            }else{
              flag = false;
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
             const SizedBox(height: 10,),
            screen[selectIndex]
          ],
        ),
      ),
    );
  }
}

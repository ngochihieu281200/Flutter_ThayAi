

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:ngochihieu_18dh110909/homepage/components/menuheader.dart';
import 'package:ngochihieu_18dh110909/homepage/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
   final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final address = TextEditingController();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var prefs;

  // ignore: unused_element
  _getData() async {
    prefs = await SharedPreferences.getInstance();
    if (!prefs.getString('username').isEmpty) {
      username.text = prefs.getString('username');
      password.text = prefs.getString('password');
      fullName.text = prefs.getString('fullname');
      phoneNumber.text = prefs.getString('phonenumber');
      address.text = prefs.getString('adress');
      // _value = prefs.getBool('check');
    }
  }
  Future<void> _save() async {
    prefs = await _prefs;
    prefs.setString('fullname', fullName.text);
    prefs.setString('phonenumber', phoneNumber.text);
    prefs.setString('adress', address.text);
    Navigator.pushNamed(context, HomePage.routeName);
    // prefs.setBool('check', true);
  }
  @override
  Widget build(BuildContext context) {
    _getData();
    return Column(children: [
      // MenuHeader(),
      Form(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(
                  height: 10,
                ),
                nameTextFormField(),
                SizedBox(
                  height: 10,
                ),
                phoneTextFormField(),
                SizedBox(
                  height: 10,
                ),
                emailTextFormField(),
                SizedBox(
                  height: 10,
                ),
                passwordTextFormField(),
                SizedBox(
                  height: 10,
                ),
                addressTextFormField(),
                SizedBox(
                  height: 10,
                ),
                Container(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  
                  onPressed: () {
                    _save();
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.green,
                  
                  child: const Text("Save", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
              ),
            ),

          ])
        ,))
    ],);
    // return Form(
    //   child: Padding(
    //     padding: const EdgeInsets.all(10.0),
    //     child: Column(
    //       children: [
    //         const SizedBox(height: 5,),
    //         nameTextFormField(),
    //         const SizedBox(height: 5,),
    //         emailTextFormField(),
    //         const SizedBox(height: 5,),
    //         passwordTextFormField(),
    //         const SizedBox(height: 5,),
    //         // conformTextFormField(),
    //         // const SizedBox(height: 5,),
    //         addressTextFormField(),
    //         const SizedBox(height: 5,),
    //         phoneTextFormField(),
    //         Container(
    //           padding: const EdgeInsets.all(10.0),
    //           child: SizedBox(
                
    //             height: 50,
    //             width: MediaQuery.of(context).size.width,
    //             child: RaisedButton(
                  
    //               onPressed: () {
    //                 Navigator.pop(context, email.text);
    //               },
    //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //               color: Colors.green,
                  
    //               child: const Text("Save", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
    //           ),
    //         ),
    //         // const SizedBox(height: 10,),
    //         // SizedBox(
    //         //   width: MediaQuery.of(context).size.width,
    //         //   child: Row(
    //         //     mainAxisAlignment: MainAxisAlignment.center,
    //         //     children: [
    //         //       Container(
    //         //         height: 40,
    //         //         width: 40,
    //         //         padding: const EdgeInsets.all(10),
    //         //         decoration: const BoxDecoration(
    //         //             color: Color(0xFFF5F6F9),
    //         //             shape: BoxShape.circle
    //         //         ),
    //         //         child: SvgPicture.asset("assets/icons/facebook-2.svg"),
    //         //       ),
    //         //       Container(
    //         //         height: 40,
    //         //         width: 40,
    //         //         margin: const EdgeInsets.only(left: 10, right: 10),
    //         //         padding: const EdgeInsets.all(10),
    //         //         decoration: const BoxDecoration(
    //         //             color: Color(0xFFF5F6F9),
    //         //             shape: BoxShape.circle
    //         //         ),
    //         //         child: SvgPicture.asset("assets/icons/google-icon.svg"),
    //         //       ),
    //         //       Container(
    //         //         height: 40,
    //         //         width: 40,
    //         //         padding: const EdgeInsets.all(10),
    //         //         decoration: const BoxDecoration(
    //         //             color: Color(0xFFF5F6F9),
    //         //             shape: BoxShape.circle
    //         //         ),
    //         //         child: SvgPicture.asset("assets/icons/twitter.svg"),
    //         //       )
    //         //     ],
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
  }
TextFormField nameTextFormField() {
    return TextFormField(
      onSaved: (value) {
        setState(() {
          fullName.text = value.toString();
        });
      },
      controller: fullName,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your full name ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.person)),
    );
  }

   TextFormField emailTextFormField() {
    return TextFormField(
      onSaved: (value) {
        setState(() {
          username.text = value.toString();
        });
      },
      enabled: false,
      controller: username,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  // TextFormField conformTextFormField() {
  //   return TextFormField(
  //     decoration: const InputDecoration(
  //         border: OutlineInputBorder(),
  //         hintText: "Re-enter your password",
  //         floatingLabelBehavior: FloatingLabelBehavior.always,
  //         suffixIcon: Icon(Icons.lock_outline)
  //     ),
  //   );
  // }


  TextFormField passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      controller: password,
      enabled: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }
TextFormField addressTextFormField() {
    return TextFormField(
      onSaved: (value) {
        setState(() {
          address.text = value.toString();
        });
      },
      controller: address,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your address",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.house_sharp)),
    );
  }

  TextFormField phoneTextFormField() {
    return TextFormField(
      onSaved: (value) {
        setState(() {
          phoneNumber.text = value.toString();
        });
      },
      controller: phoneNumber,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your phone number ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone)),
    );
  }
   Widget MenuHeader() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(color: Colors.green),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "Account info",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                GestureDetector(
                  onTap: () {
                    _save();
                    print("update successful");
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )));
  }


}


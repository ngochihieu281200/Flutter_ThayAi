
import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget{
   Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 60,
      alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
            Expanded(child: Text("Account info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
            // GestureDetector(
            //   onTap: (){
                
            //   },
            //   child: Text("Save", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
            // )
            ],
          )));
  }
}
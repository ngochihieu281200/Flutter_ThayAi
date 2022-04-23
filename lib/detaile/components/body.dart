import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:ngochihieu_18dh110909/detaile/components/addtocart.dart';
import 'package:ngochihieu_18dh110909/models/product.dart';


class Body extends StatelessWidget {
  Products product;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200 ,
            child: SvgPicture.asset("${product.image}")
            ),
          const SizedBox(height: 20,),
          Expanded(child: Text("Description: ${product.description}" ), flex: 1,),
          AddProductToCart(product: product,)
        ],
      ),
    );
  }
}

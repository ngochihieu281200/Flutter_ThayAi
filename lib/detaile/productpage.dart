import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/models/product.dart';
import 'components/body.dart';


class ProductDetailsArguments {
  final Products product;

  ProductDetailsArguments({  required this.product});
}

class ProductPage extends StatelessWidget {

  static String routeName = "/details";

  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    // final ProductDetailsArguments arguments =ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(

        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Details"),
      ),

      body: Body(product: arguments.product) ,
    );
  }
}




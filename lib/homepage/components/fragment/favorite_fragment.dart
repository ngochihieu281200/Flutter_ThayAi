import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/models/product.dart';



class FavoriteDetail extends StatelessWidget {
  List<Products> products;
  


  FavoriteDetail(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    products = Products.init();
    print(products.length.toString());
    return Expanded(
        child: Container(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index){
                return ProductItemList(product:  products[index],);
              }),
        ),
      );


  }
}

// ignore: must_be_immutable
class ProductItemList extends StatelessWidget {
  Products product;

  ProductItemList({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset("${product.image}", fit: BoxFit.fill,),
          ),
          const SizedBox(width: 5,),
          Expanded(
            child: SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${product.title}"),
                  Expanded(child: Text("${product.description}", maxLines: 5,overflow: TextOverflow.ellipsis,))
                ],
              )

            ),
          )
        ],
      ),
    );
  }

}


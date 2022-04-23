import 'package:flutter/cupertino.dart';
import 'package:ngochihieu_18dh110909/category/components/category_detail.dart';
import 'package:ngochihieu_18dh110909/models/categories.dart';

class Body extends StatelessWidget {
  int cateId;
  Body(this.cateId);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CategoryDetail(cateId),
    );
  }
}
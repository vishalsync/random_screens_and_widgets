import 'package:flutter/material.dart';

//widgets
import 'product_item_widget.dart';


class ProductListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 10.0,),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
      ],      
    );
  }
}

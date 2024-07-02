// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import 'package:store_app/models/product/product.dart';

import 'package:store_app/view/widgets/product_item.dart';

class ProductLIstView extends StatelessWidget {
  List<products> productList = [];
  ProductLIstView({
    Key? key,
    required this.productList,
  });
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 260,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10),
      delegate: SliverChildBuilderDelegate(
          (context, index) => product_card(
                product: productList[index],
              ),
          childCount: productList.length),
    );
  }
}

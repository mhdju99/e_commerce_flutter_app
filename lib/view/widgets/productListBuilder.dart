// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/core/viewmodel/homePage_viewmodel.dart';

import 'package:store_app/view/widgets/productListView.dart';

class ProductListBuilder extends StatelessWidget {
  // String cato;
  ProductListBuilder({
    Key? key,
  }) : super(key: key);
  HomeControllar cc = Get.put(HomeControllar());
  // Future<void> getNews() async {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (!cc.loading.value) {
        return ProductLIstView(
          productList: cc.product ?? [],
        );
      } else {
        return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()));
      }
    });
  }
}

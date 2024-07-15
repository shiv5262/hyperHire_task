import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'product_widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();

    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: const Color(0xFFFFFFFF),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '제일 핫한 리뷰를 만나보세요',
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '리뷰️  랭킹⭐ top 3',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: homeController.productList
                  .map(
                    (product) => ProductTileWidget(
                      titleText: product.title,
                      detailText1: product.detail1,
                      detailText2: product.detail2,
                      rating: product.rating.toString(),
                      ratingCount: product.ratingCount.toString(),
                      tagText1: product.tags.first,
                      tagText2: product.tags.last,
                      crownImage: product.crownImage,
                      productImage: product.productImage,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

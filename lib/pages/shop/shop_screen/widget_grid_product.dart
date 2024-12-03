import 'package:ecommerce_web_app/commons/widgets/widget_item_product.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List products;

  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 48, left: 175, right: 175),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.9,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ItemProduct(
          image: product.image,
          name: product.name,
          department: product.department,
          originalPrice: product.originalPrice.toString(),
          discountedPrice: product.discountedPrice.toString(),
        );
      },
    );
  }
}
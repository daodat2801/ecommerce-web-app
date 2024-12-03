import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/best_seller_products_section.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_description_section.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_info_section.dart';
import 'package:flutter/material.dart';
import '../../commons/constants/app_color.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.grayBackgroundColor,
        child: const Column(
          children: [
            Header(isExpanded: true),
            ProductInfoSection(),
            ProductDescriptionSection(),
            BestSellerProductsSection(),
            BrandList(),
            Footer(),
          ],
        )
      ),
    );
  }
}

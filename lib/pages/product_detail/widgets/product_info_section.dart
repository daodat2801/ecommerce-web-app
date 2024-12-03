import 'package:ecommerce_web_app/pages/product_detail/widgets/product_image_preview.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import 'display_product_info.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.grayBackgroundColor,
        width: double.infinity,
        child: const Center(
            child: SizedBox(
          width: 1050,
          height: 598,
          child: Row(
            children: [
              Flexible(flex: 1, child: ProductImagePreview()),
              SizedBox(width: 30),
              Flexible(flex: 1, child: DisplayProductInfo()),
            ],
          ),
        )));
  }
}

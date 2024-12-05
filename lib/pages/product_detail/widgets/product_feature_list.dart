import 'package:ecommerce_web_app/pages/product_detail/widgets/product_feature_item.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class ProductFeatureList extends StatelessWidget {
  const ProductFeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'the quick fox jumps over',
            style: TextStyle(
              color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          for (int i = 0; i < 4; i++) ...[
            const ProductFeatureItem(),
            if (i != 3) const SizedBox(height: 10),
          ],
          const SizedBox(height: 25),
          const Text(
            'the quick fox jumps over',
            style: TextStyle(
              color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          for (int i = 0; i < 3; i++) ...[
            const ProductFeatureItem(),
            if (i != 2) const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}

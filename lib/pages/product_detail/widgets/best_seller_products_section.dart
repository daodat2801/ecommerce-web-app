import 'package:ecommerce_web_app/pages/product_detail/widgets/best_seller_product_item.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class BestSellerProductsSection extends StatelessWidget {
  const BestSellerProductsSection({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> listImagePath = [
      'assets/images/best_seller_product_1.png',
      'assets/images/best_seller_product_2.png',
      'assets/images/best_seller_product_3.png',
      'assets/images/best_seller_product_4.png',
      'assets/images/best_seller_product_5.png',
      'assets/images/best_seller_product_6.png',
      'assets/images/best_seller_product_1.png',
      'assets/images/best_seller_product_2.png',
    ];

    return Container(
      color: AppColors.grayBackgroundColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 42),
      child: Center(
        child: SizedBox(
          width: 1050,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'BESTSELLER PRODUCTS',
                style: TextStyle(
                  color: AppColors.textPrimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 24),
              const Divider(
                color: AppColors.dividerLightGrayColor,
                height: 2,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 908,
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 442,
                      crossAxisCount: 4,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 24,
                      childAspectRatio: 1,
                    ),
                    itemCount: listImagePath.length,
                    itemBuilder: (context, index) {
                      return BestSellerProductItem(imagePath: listImagePath[index]);
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

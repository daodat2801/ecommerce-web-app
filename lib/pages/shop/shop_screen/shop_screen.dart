import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_category_list.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_grid_loading.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_grid_product.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_page_button.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopScreen extends ConsumerWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopState = ref.watch(ViewModelProvider.shopScreenVMProvider);

    ref.read(ViewModelProvider.shopScreenVMProvider.notifier).fetchProducts();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(isExpanded: true),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 24),
              child: Row(
                children: [
                  const Text(
                    "Shop",
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColors.textPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  const Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset(AppSvgs.icArrowRight, width: 9, height: 16),
                  const SizedBox(width: 10),
                  const Text(
                    "Shop",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondaryColor2,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const CategoryList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Showing all 12 results",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondaryColor3,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Views: ",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textSecondaryColor3,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(width: 15),
                      OutlinedButton(
                        onPressed: null,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppColors.radiusColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: SvgPicture.asset(AppSvgs.iconList2, width: 16, height: 16),
                      ),
                      const SizedBox(width: 15),
                      OutlinedButton(
                        onPressed: null,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppColors.radiusColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: SvgPicture.asset(AppSvgs.iconList, width: 16, height: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: null,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppColors.radiusColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              "Popularity",
                              style: TextStyle(
                                  color: AppColors.textSecondaryColor3, fontSize: 14),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset(AppSvgs.icArrowDown, width: 14),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Filter",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            (shopState.products.isEmpty)
                ? const LoadingGrid()
                : ProductGrid(products: shopState.products),
            const PageButton(),
            const SizedBox(height: 48),
            const BrandList(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

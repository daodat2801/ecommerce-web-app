import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_grid_loading.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_grid_product.dart';
import 'package:ecommerce_web_app/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BestSellProductSession extends StatelessWidget {
  final List<Product>? products;
  const BestSellProductSession({super.key, this.products});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Container(
      color: AppColors.secondaryBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 250),
        child: Column(
          children: [
            Text(localization.home_best_sell_product_title_1,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondaryColor3)),
            const SizedBox(height: 15),
            Text(localization.home_best_sell_product_title_2,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor)),
            const SizedBox(height: 15),
            Text(localization.home_best_sell_product_desc,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondaryColor3)),
            (products == null || products!.isEmpty)
                ? const LoadingGrid()
                : ProductGrid(products: products!),
          ],
        ),
      ),
    );
  }
}

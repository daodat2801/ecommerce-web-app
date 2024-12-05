import 'package:ecommerce_web_app/pages/product_detail/widgets/product_feature_item.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductFeatureList extends StatelessWidget {
  const ProductFeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localization.the_quick_fox_jumps_over,
            style: const TextStyle(
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
          Text(
            localization.the_quick_fox_jumps_over,
            style: const TextStyle(
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

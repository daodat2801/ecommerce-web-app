import 'package:ecommerce_web_app/pages/product_detail/widgets/product_description_text.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_feature_list.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_image.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteBackgroundColor,
      width: double.infinity,
      child: const Center(
        child: SizedBox(
          width: 1050,
          child: Column(
            children: [
              DescriptionTabs(),
              Divider(
                color: AppColors.dividerLightGrayColor,
                height: 1,
              ),
              SizedBox(height: 42),
              ProductDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionTabs extends StatelessWidget {
  const DescriptionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DescriptionTabItem(label: localization.description),
          const SizedBox(width: 48),
          DescriptionTabItem(
              label: localization.additional_information, isActive: true),
          const SizedBox(width: 48),
          DescriptionTabItem(label: localization.reviews),
          const SizedBox(width: 8),
          const Text(
            '(0)',
            style: TextStyle(
              color: AppColors.textColorGreen,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionTabItem extends StatelessWidget {
  final String label;
  final bool isActive;

  const DescriptionTabItem({
    super.key,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: isActive
            ? AppColors.textPrimaryColor
            : AppColors.textMediumGrayColor,
        fontWeight: isActive ? FontWeight.w700 : FontWeight.w600,
        fontSize: 14,
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 427,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(),
          SizedBox(width: 30),
          ProductDescriptionText(),
          SizedBox(width: 30),
          ProductFeatureList(),
        ],
      ),
    );
  }
}

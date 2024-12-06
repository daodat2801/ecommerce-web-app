import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: AppColors.grayBackgroundColor,
      child: Column(
        children: [
          Text(
            localization.about_big_company,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            localization.about_partner,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textMediumGrayColor,
            ),
          ),
          const SizedBox(height: 50),
          const BrandList(),
        ],
      ),
    );
  }
}

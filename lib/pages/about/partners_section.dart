import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: AppColors.grayBackgroundColor,
      child: const Column(
        children: [
          Text(
             AppLocalizations.of(context)!.about_big_company,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 547,
            child: Text(
              AppLocalizations.of(context)!.about_partner,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.textMediumGrayColor,
              ),
            ),
          ),
          SizedBox(height: 50),
          BrandList(),
        ],
      ),
    );
  }
}

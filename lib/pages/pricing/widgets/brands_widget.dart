import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class BrandsWidget extends StatelessWidget {
  //key
  const BrandsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 365,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.main_trusted_by,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.productColorBlack,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.2,
              height: 30 / 20,
            ),
          ),
          const SizedBox(height: 30),
          const BrandList(),
        ],
      ),
    );
  }
}

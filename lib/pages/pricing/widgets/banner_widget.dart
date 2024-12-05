import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BannerWidget extends StatelessWidget {
  //key
  const BannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Container(
      height: 288,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child:  Column(
        children: [
          Flexible(
            flex: 1,
            child: Text(
              localization.pricing,
              style: const TextStyle(
                color: AppColors.textSecondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.1,
                height: 24 / 16,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              localization.pricing_title,
              style: const TextStyle(
                color: AppColors.textPrimaryColor,
                fontSize: 58,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
                height: 80 / 58,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  localization.shop_home,
                  style: const TextStyle(
                    color: AppColors.textSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                    height: 24 / 4,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textLightGray,
                  size: 16,
                ),
                Text(
                  localization.main_breadcrumb_pricing,
                  style: const TextStyle(
                    color: AppColors.textSecondaryColor2,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                    height: 24 / 4,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

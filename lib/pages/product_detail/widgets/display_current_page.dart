import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../commons/constants/app_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayCurrentPage extends StatelessWidget {
  const DisplayCurrentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return SizedBox(
      width: double.infinity,
      height: 92,
      child: Center(
        child: SizedBox(
          width: 1050,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                localization.header_navigation_home,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor),
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                AppSvgs.iconArrowLightGray,
                fit: BoxFit.cover,
                height: 16,
                width: 9,
              ),
              const SizedBox(width: 15),
              Text(
                localization.header_navigation_shop,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textLightGray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

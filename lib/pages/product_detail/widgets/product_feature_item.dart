import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../commons/constants/app_color.dart';
import '../../../commons/constants/app_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductFeatureItem extends StatelessWidget {
  const ProductFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SvgPicture.asset(
            AppSvgs.iconArrowDark,
            height: 16,
            width: 9,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 23),
          Text(
            localization.the_quick_fox_jumps_over_the_lazy_dog,
            style: const TextStyle(
              color: AppColors.textMediumGrayColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
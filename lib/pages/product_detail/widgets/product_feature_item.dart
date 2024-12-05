import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../commons/constants/app_color.dart';
import '../../../commons/constants/app_svg.dart';

class ProductFeatureItem extends StatelessWidget {
  const ProductFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Text(
            'the quick fox jumps over the lazy dog',
            style: TextStyle(
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
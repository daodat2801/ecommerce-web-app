import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BrandList extends StatelessWidget {
  const BrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 193),
      height: 175,
      color: AppColors.white300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(AppSvgs.icBrand1),
          SvgPicture.asset(AppSvgs.icBrand2),
          SvgPicture.asset(AppSvgs.icBrand3),
          SvgPicture.asset(AppSvgs.icBrand4),
          SvgPicture.asset(AppSvgs.icBrand5),
          SvgPicture.asset(AppSvgs.icBrand6),
        ],
      ),
    );
  }
}

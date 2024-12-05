import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
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
            "Big Companies Are Here",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimaryColor,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Problems trying to resolve the conflict between \nthe two major realms of Classical physics: Newtonian mechanics ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textMediumGrayColor,
            ),
          ),
          SizedBox(height: 50),
          BrandList(),
        ],
      ),
    );
  }
}

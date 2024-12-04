import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  //key
  const BannerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 288,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: const Column(
        children: [
          Text(
            'PRICING',
            style: TextStyle(
              color: AppColors.textSecondaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              height: 24 / 16,
            ),
          ),
          Text(
            'Simple Pricing ',
            style: TextStyle(
              color: AppColors.textPrimaryColor,
              fontSize: 58,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.2,
              height: 80 / 58,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  color: AppColors.textSecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                  height: 24 / 4,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textLightGray,
                size: 16,
              ),
              Text(
                "Pricing",
                style: TextStyle(
                  color: AppColors.textSecondaryColor2,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                  height: 24 / 4,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

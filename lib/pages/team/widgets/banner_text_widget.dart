import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class BannerTextWidget extends StatelessWidget {
  //key
  const BannerTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        height: 280,
        width: 900,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WHAT WE DO',
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textSecondaryColor3,
                  height: 24 / 16),
            ),
            SizedBox(height: 10),
            Expanded(
                child: Text(
              'Innovation tailored for you',
              style: TextStyle(
                  color: AppColors.productColorBlack,
                  fontSize: 58,
                  fontWeight: FontWeight.w700,
                  height: 80 / 58,
                  letterSpacing: 0.2),
            )),
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
                  color: AppColors.dividerGrayColor,
                  size: 16,
                ),
                Text(
                  "Team",
                  style: TextStyle(
                    color: AppColors.textSecondaryColor3,
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
      ),
    );
  }
}

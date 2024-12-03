import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../commons/constants/app_svg.dart';

class DisplayCurrentPage extends StatelessWidget {
  const DisplayCurrentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 92,
      child: Center(
        child: SizedBox(
          width: 1050,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimaryColor
                ),
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                AppSvgs.iconArrowLightGray,
                fit: BoxFit.cover,
                height: 16,
                width: 9,
              ),
              const SizedBox(width: 15),
              const Text(
                'Shop',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textLightGray
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

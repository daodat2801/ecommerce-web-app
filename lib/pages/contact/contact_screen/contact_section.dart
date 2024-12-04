import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "CONTACT US",
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textPrimaryColor,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Get in touch\ntoday!",
                  style: TextStyle(
                    fontSize: 58,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "We know how large objects will act,\nbut things on a small scale",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondaryColor3,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Phone: +451 215 215",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Fax: +451 215 215",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(AppSvgs.icTwDark, width: 25, height: 25),
                    const SizedBox(width: 25),
                    SvgPicture.asset(AppSvgs.icFbDark, width: 25, height: 25),
                    const SizedBox(width: 25),
                    SvgPicture.asset(AppSvgs.icIgDark, width: 25, height: 25),
                    const SizedBox(width: 25),
                    SvgPicture.asset(AppSvgs.icLkDark, width: 25, height: 25),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Image.asset(
              AppImage.family,
              fit: BoxFit.contain,
              height: 612,
              width: 632,
            ),
          ),
        ],
      ),
    );
  }
}

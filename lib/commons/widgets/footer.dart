import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_svg.dart';
import 'footer_column.dart';
import 'footer_subscribe.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Bandage",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppSvgs.icFbBlue,height: 16,width: 16 ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(AppSvgs.icIgBlue,height: 16,width: 16 ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(AppSvgs.icTwBlue,height: 16,width: 16 ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 195),
          child: const Column(
            children: [
              Divider(
                color: AppColors.divider,
                thickness: 1,
              ),
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FooterColumn(
                    title: "Company Info",
                    items: ["About Us", "Carrier", "We are hiring", "Blog"],
                  ),
                  FooterColumn(
                    title: "Legal",
                    items: [
                      "Privacy Policy",
                      "Terms of Service",
                      "Disclaimer",
                      "Cookie Policy"
                    ],
                  ),
                  FooterColumn(
                    title: "Features",
                    items: [
                      "Business Marketing",
                      "User Analytics",
                      "Live Chat",
                      "Unlimited Support"
                    ],
                  ),
                  FooterColumn(
                    title: "Resources",
                    items: [
                      "iOS & Android",
                      "Watch a Demo",
                      "Customers",
                      "API"
                    ],
                  ),
                  FooterSubscribe(),
                ],
              ),
              SizedBox(height: 52),
            ],
          ),
        ),
        Container(
          color: AppColors.secondaryBackgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 195),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Made With Love By Finland All Rights Reserved",
                style: TextStyle(
                  color: AppColors.textSecondaryColor3,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
